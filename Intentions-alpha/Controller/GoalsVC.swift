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
    @IBOutlet weak var welcomeStack: UIStackView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideMenu: UIView!
    
    // Variables
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipedLeft))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipedRight))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        let addGoalVC = storyboard?.instantiateViewController(withIdentifier: "AddGoalVC")
        presentDetail(addGoalVC!)
    }
    
    @IBAction func menuBtnPressed(_ sender: Any) {
        updateConstraints()
        
        
    }
    
    @objc func swipedRight() {
        updateConstraints()
    }
    
    @objc func swipedLeft() {
        updateConstraints()
    }
    
    
    func setUpSideMenuView(_ shadowOn: Bool) {
        if shadowOn {
            sideMenu.layer.shadowOffset = CGSize.zero
            sideMenu.layer.shadowColor = UIColor.black.cgColor
            sideMenu.layer.shadowOpacity = 1
            sideMenu.layer.shadowRadius = 10
        } else {
            sideMenu.layer.shadowColor = UIColor.clear.cgColor
        }
    }
    
    func updateConstraints() {
        welcomeStack.isHidden = true
        if sideMenuOpen {
            self.sideMenuConstraint.constant = -300
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
                self.setUpSideMenuView(false)
                self.welcomeStack.isHidden = false
            }, completion: nil)
            sideMenuOpen = false
        } else {
            self.sideMenuConstraint.constant = 0
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
                self.setUpSideMenuView(true)
                self.welcomeStack.isHidden = true
            }, completion: nil)
            sideMenuOpen = true
        }
        
    }
    
    
}

