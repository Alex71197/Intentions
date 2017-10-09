//
//  ViewController.swift
//  Intentions-alpha
//
//  Created by Alex Villacres on 10/8/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        let addGoalVC = storyboard?.instantiateViewController(withIdentifier: "AddGoalVC")
        presentDetail(addGoalVC!)
    }
    
    @IBAction func menuBtnPressed(_ sender: Any) {
        
    }
    
    
}

