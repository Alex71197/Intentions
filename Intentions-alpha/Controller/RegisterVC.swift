//
//  RegisterVC.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    // Outlets
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Actions
    @IBAction func registerBtnPressed(_ sender: Any) {
        if emailTxt.text != nil && passTxt.text != nil && passTxt.text == confirmPassTxt.text {
            AuthService.instance.registerUser(withEmail: self.emailTxt.text!, andPassword: self.passTxt.text!, userCreationComplete: { (success, registrationError) in
                if success {
                    AuthService.instance.loginUser(withEmail: self.emailTxt.text!, andPassword: self.passTxt.text!, loginComplete: { (success, nil) in
                        print("Succesfully registered user")
                        self.dismiss(animated: true, completion: nil)
                    })
                } else {
                    print(String(describing: registrationError?.localizedDescription))
                }
            })
        }
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        presentFade(loginVC!)
    }
    
}
