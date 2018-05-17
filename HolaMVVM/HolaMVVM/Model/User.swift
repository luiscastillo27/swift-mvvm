//
//  User.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class User {
    var name: String!
    var lastname: String!
    var email: String!
    var password: String!
    
    init(name: String, lastname: String, email: String, password: String) {
        self.name = name
        self.lastname = lastname
        self.email = email
        self.password = password
    }
    
    init(mv: RegistrationViewModel) {
        self.name = mv.name
        self.lastname = mv.lastname
        self.email = mv.email
        self.password = mv.password
    }
}
