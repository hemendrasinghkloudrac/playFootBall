//
//  headerViewController.swift
//  playFootBall
//
//  Created by HemendraSingh on 04/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class headerViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var leftHeaderView: UIView!
    @IBOutlet weak var centerHeaderView: UIView!
    @IBOutlet weak var rightHeaderView: UIView!
    
    @IBOutlet weak var rightViewMargin: NSLayoutConstraint!
    @IBOutlet weak var leftViewMargin: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftHeaderView.layer.cornerRadius = leftHeaderView.frame.size.width/2.0
        leftHeaderView.clipsToBounds = true
        centerHeaderView.layer.cornerRadius = centerHeaderView.frame.size.width/2.0
        centerHeaderView.clipsToBounds = true
     }
    
    @IBAction func centerButtonTAPPED(_ sender: AnyObject) {
        
        let  myConstant = -60;
        self.rightViewMargin.constant = CGFloat(myConstant);
        self.leftViewMargin.constant = CGFloat(myConstant);
        UIView.animate(withDuration: 0.4, animations: {
            self.view.layoutIfNeeded()
            }, completion: {finished in })
        
       }
}
