//
//  RegistrationViewModel.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class RegistrationViewModel {
    var name: String
    var lastname: String
    var email: String
    var password: String
    
    init(name: String, lastname: String, email: String, password: String) {
        self.name = name
        self.lastname = lastname
        self.email = email
        self.password = password
    }
    
    func save() -> Void {
        let user = User(mv: self)
        let dataAccess = DataAccess()
        dataAccess.addUser(name: user.name!, lastname: user.lastname!, email: user.email!, password: user.password!)
    }
}
