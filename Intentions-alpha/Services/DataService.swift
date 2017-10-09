//
//  DataServices.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

let DB_BASE = Database.database().reference()

class DataServices {
    
    static let instance = DataServices()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_CATEGORIES = DB_BASE.child("categories")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_CATEGORIES: DatabaseReference {
        return _REF_CATEGORIES
    }
    
    // Creating Users
    func createUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    // Creating Categories
    func createCategory(withCategory name: String, forUID uid: String, withImage image: UIImage?, creationComplete: @escaping (_ status: Bool) -> ()) {
        REF_CATEGORIES.childByAutoId().updateChildValues(["name": name, "sender_id": uid, "image": image])
        creationComplete(true)
        
    }
    
}
