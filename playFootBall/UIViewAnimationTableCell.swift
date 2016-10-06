//
//  UIViewAnimationTableCell.swift
//  playFootBall
//
//  Created by HemendraSingh on 05/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class UIViewAnimationTableCell: UITableViewCell {
    
    @IBOutlet weak var leftUIView: UIView!
    @IBOutlet weak var centerUIView: UIView!
    @IBOutlet weak var rightUIView: UIView!
    @IBOutlet weak var leftViewMargin: NSLayoutConstraint!
    @IBOutlet weak var rightViewMargin: NSLayoutConstraint!
    @IBOutlet weak var centerBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        DispatchQueue.main.async {
            self.convertPlainUIViewToCircle()
        }
    }
    
    func convertPlainUIViewToCircle() {
        leftUIView.layer.cornerRadius = leftUIView.frame.size.width/2.0
        leftUIView.clipsToBounds = true
        centerUIView.layer.cornerRadius = centerUIView.frame.size.width/2.0
        centerUIView.clipsToBounds = true
        rightUIView.layer.cornerRadius = rightUIView.frame.size.width/2.0
        rightUIView.clipsToBounds = true
    }
}
