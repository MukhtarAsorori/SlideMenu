//
//  ViewController.swift
//  SlideMenu
//
//  Created by Admin on 09/03/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailingConst: NSLayoutConstraint!
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    @IBOutlet weak var menuHideView: UIView!
    var isMenuVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showSlideMenu(_ sender: Any) {
        if isMenuVisible == true{
            leadingConst.constant = 0
            trailingConst.constant = 0
            
            isMenuVisible = false
        }else{
            leadingConst.constant = 150
            trailingConst.constant = -150
            
            isMenuVisible = true
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()

        }){ (animationComplete) in
            print("The animation is complete")
        }
    }
    
}

