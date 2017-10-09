//
//  CreateCategoryVC.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class CreateCategoryVC: UIViewController {

    // Outlets
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var categoryImg: CircleImage!
    @IBOutlet weak var categoryNameTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseImgBtnPressed(_ sender: Any) {
    }
    
    @IBAction func createCategoryBtnPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismissFade()
    }
    
}
