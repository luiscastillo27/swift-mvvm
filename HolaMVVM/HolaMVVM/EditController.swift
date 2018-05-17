//
//  EditController.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class EditController: UIViewController {

    var selectedUserViewModel: UserViewModel!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastname: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtName.text = selectedUserViewModel.name
        self.txtLastname.text = selectedUserViewModel.lastname
        self.txtEmail.text = selectedUserViewModel.email
    }

    

}
