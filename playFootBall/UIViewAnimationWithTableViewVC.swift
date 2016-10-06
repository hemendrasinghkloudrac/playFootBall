//
//  UIViewAnimationWithTableViewVC.swift
//  playFootBall
//
//  Created by HemendraSingh on 05/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class UIViewAnimationWithTableViewVC: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var uiViewAnimationTblView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("VotingTableCellID", forIndexPath: indexPath) as! VotingTableViewCell
        cell.centerBtn.addTarget(self, action: #selector(UIViewAnimationWithTableViewVC.cellBtnAction(_:)), forControlEvents: .TouchUpInside)
        return cell

    }
    
    func cellBtnAction(sender: UIButton) {
        let  myConstant = -60
                let point: CGPoint = sender.convertPoint(CGPoint.zero, toView: uiViewAnimationTblView)
        let indexPath = uiViewAnimationTblView.indexPathForRowAtPoint(point)
        let cell = uiViewAnimationTblView.cellForRowAtIndexPath(indexPath!) as? VotingTableViewCell
        
        cell!.rightViewMargin.constant = CGFloat(myConstant)
        cell!.leftViewMargin.constant = CGFloat(myConstant)
        UIView.animateWithDuration(0.4, animations: {
            cell!.layoutIfNeeded()
        }, completion: {finished in })
       }
}
