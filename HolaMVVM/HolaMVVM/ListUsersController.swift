//
//  ListUsersController.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class ListUsersController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    private var userListViewModel: UserlistViewModel!
    private var dataAccess: DataAccess!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        self.dataAccess = DataAccess()
        self.userListViewModel = UserlistViewModel(dataAccess: self.dataAccess )
        self.table.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userListViewModel.usersViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        let user = self.userListViewModel.usersViewModel[indexPath.row]
        cell.textLabel?.text = "\(user.name!), \(user.lastname!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "edit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {        
        if segue.identifier == "edit" {
            if let id = self.table.indexPathForSelectedRow {
                let destination = segue.destination as! EditController
                let user = self.userListViewModel.usersViewModel[id.row]
                destination.selectedUserViewModel = user
            }
        }
    }
}
