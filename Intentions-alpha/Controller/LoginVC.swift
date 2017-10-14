//
//  LoginVC.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func loginBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        let registerVC = storyboard?.instantiateViewController(withIdentifier: "RegisterVC")
        presentFade(registerVC!)
    }
}
