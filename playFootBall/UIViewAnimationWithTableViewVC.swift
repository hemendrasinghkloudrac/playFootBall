//
//  UIViewAnimationWithTableViewVC.swift
//  playFootBall
//
//  Created by HemendraSingh on 05/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class UIViewAnimationWithTableViewVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var uiViewAnimationTblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "uiViewAnimationCellIdentifier", for: indexPath) as! UIViewAnimationTableCell
        cell.centerBtn.addTarget(self, action:#selector(UIViewAnimationWithTableViewVC.cellBtnAction), for: .touchUpInside)
        return cell
    }
    
    func cellBtnAction(_ sender: UIButton) {
        // Method (1) for getting table cell using superview of sender
        
        /* let cell = sender.superview?.superview?.superview?.superview as! UIViewAnimationTableCell
         let  myConstant = -60;
         cell.rightViewMargin.constant = CGFloat(myConstant)
         cell.leftViewMargin.constant = CGFloat(myConstant)
         UIView.animate(withDuration: 0.4, animations: {
         cell.layoutIfNeeded()
         }, completion: {finished in })*/
        
        
        // Method(2) for getting table cell using CGPoint
        let  myConstant = -60
        let point: CGPoint = sender.convert(CGPoint.zero, to:uiViewAnimationTblView)
        let indexPath = uiViewAnimationTblView.indexPathForRow(at: point)
        let cell = uiViewAnimationTblView.cellForRow(at: indexPath!) as! UIViewAnimationTableCell
        cell.rightViewMargin.constant = CGFloat(myConstant)
        cell.leftViewMargin.constant = CGFloat(myConstant)
        UIView.animate(withDuration: 0.4, animations: {
            cell.layoutIfNeeded()
            }, completion: {finished in })
    }
}
