//
//  AddGoalVC.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class AddGoalVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createCategoryBtnPressed(_ sender: Any) {
        let createCategoryVC = CreateCategoryVC()
        presentFade(createCategoryVC)
    }
    
}
