//
//  UserViewModel.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class UserViewModel {
    var name: String!
    var lastname: String!
    var email: String!
    
    init(user: User) {
        self.name = user.name
        self.lastname = user.lastname
        self.email = user.email
    }
}
