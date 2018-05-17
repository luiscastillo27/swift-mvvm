//
//  DataAccess.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import Foundation

class DataAccess {
    var users = [User]()
    func getAllUsers() -> [User] {
        users.append( User(name: "Luis Manuel", lastname: "Castillo Zamorano", email: "luis@mail.com", password: "jimyluis"))
        users.append( User(name: "Ana Mireya", lastname: "Jimenez Perez", email: "jim@mail.com", password: "jimyluis"))
        users.append( User(name: "Dolores Imelda", lastname: "Zamorano Lugo", email: "xobb@mail.com", password: "jimyluis"))
        users.append( User(name: "Luis Manuel", lastname: "Castillo Cano", email: "castillo@mail.com", password: "jimyluis"))
        users.append( User(name: "Jose Ricardo", lastname: "Zamorano Lugo", email: "luis@mail.com", password: "jimyluis"))
        return users
    }
    
    func addUser(name: String, lastname: String, email: String, password: String) {
        print(name)
        print(lastname)
        print(email)
        print(password)
        print("se ha registrado un usuario")
    }
}
