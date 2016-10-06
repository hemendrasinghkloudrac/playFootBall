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
    var myConstant = Int()
    var flag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.converUIViewToCircle()
        })
        
     }
    //self.perform(#selector(headerViewController.converUIViewToCircle), with: nil, afterDelay: 1)
    
    @IBAction func centerButtonTAPPED(sender: AnyObject) {
        rightHeaderView.hidden = false
        if flag {
              myConstant = +60
            flag = false
            
        } else {
              myConstant = -60
            flag = true
            
        }
        self.leftViewMargin.constant = CGFloat(myConstant)
        self.rightViewMargin.constant = CGFloat(myConstant)
        UIView.animateWithDuration(0.4, animations: {
        self.view.layoutIfNeeded()
            }, completion: {finished in
                if self.flag {
                    self.rightHeaderView.hidden = true
                }} )
        
    }
    
    func converUIViewToCircle() {
        leftHeaderView.layer.cornerRadius = leftHeaderView.frame.size.width/2.0
        leftHeaderView.clipsToBounds = true
        centerHeaderView.layer.cornerRadius = centerHeaderView.frame.size.width/2.0
        centerHeaderView.clipsToBounds = true
        rightHeaderView.layer.cornerRadius = centerHeaderView.frame.size.width/2.0
        rightHeaderView.clipsToBounds = true
    }
}