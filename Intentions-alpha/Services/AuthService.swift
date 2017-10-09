//
//  AuthService.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    static let instance = AuthService()
    
    // Logic for Registering Users
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userCreationComplete(false, error)
                return
            }
            let userData = ["provider": user.providerID, "email": user.email]
            DataServices.instance.createUser(uid: user.uid, userData: userData)
            userCreationComplete(true, nil)
        }
    }
    
    // Logic for Logging in Users
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginComplete(false, error)
                return
            }
            loginComplete(true, nil)
        }
    }
    
    // Logic for creating Categories
    
    func createCategory() {
        
    }
    
}
