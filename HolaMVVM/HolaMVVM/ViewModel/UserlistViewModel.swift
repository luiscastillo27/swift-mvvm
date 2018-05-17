//
//  UserlistViewModel.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class UserlistViewModel {
    var usersViewModel: [UserViewModel] = [UserViewModel]()
    private var dataAccess: DataAccess
    
    init(dataAccess: DataAccess) {
        self.dataAccess = dataAccess
        getUsers()
    }
    
    private func getUsers(){
        let users = self.dataAccess.getAllUsers()
        self.usersViewModel = users.map{ user in
            return UserViewModel(user: user)
        }
    }
}
