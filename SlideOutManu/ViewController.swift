//
//  ViewController.swift
//  SlideOutManu
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 iNazim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var sideBarManuOut: NSLayoutConstraint!
    var isSideBarHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // ininsialize constent -140
        sideBarManuOut.constant = -140
    }

    @IBAction func organizeBtn(_ sender: UIBarButtonItem) {
        if isSideBarHidden {
            sideBarManuOut.constant = 0
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
                
            })
        }else{
            sideBarManuOut.constant = -140
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
        isSideBarHidden = !isSideBarHidden
    }
    

}

