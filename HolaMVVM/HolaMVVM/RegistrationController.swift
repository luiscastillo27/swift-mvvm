//
//  ViewController.swift
//  HolaMVVM
//
//  Created by admin on 16/05/18.
//  Copyright © 2018 iwebsapp. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    private var registraionVM: RegistrationViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSave(_ sender: UIBarButtonItem) {
        self.registraionVM = RegistrationViewModel(name: txtName.text!, lastname: txtLastName.text!, email: txtEmail.text!, password: txtPassword.text!)
        self.registraionVM.save()
    }
    
}

