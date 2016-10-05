//
//  UIViewAnimationWithTableViewVC.swift
//  playFootBall
//
//  Created by HemendraSingh on 05/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class UIViewAnimationWithTableViewVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
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
        return cell
    }
}
