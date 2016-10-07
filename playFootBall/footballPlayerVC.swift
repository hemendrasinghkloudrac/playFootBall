//
//  footballFieldWithTableViewVC.swift
//  playFootBall
//
//  Created by HemendraSingh on 06/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class footballPlayerVC: UITableViewController {
    
    var playerNameArr: NSArray = ["Cavin","Anwar","S.K","P.Das","S.Sahni","V.Kishore","Rocus","Jewel","D.K","Narayan","Nirmal"]
    var jerseyNumberArr: NSArray = ["1","2","3","4","5","6","7","8","9","10","11"]
    var playerName: UITextField!
    var playerJerseyNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footballPlayerCellID", for: indexPath) as! footBallPlayerTabelCell
        cell.Btn1.addTarget(self, action:#selector(footballPlayerVC.player1InfoAction), for: .touchUpInside)
        cell.viewPlayerDetail(playerNamesArr: playerNameArr, JerseyNumbersArr: jerseyNumberArr)
        return cell
    }
    
    @IBAction func player1InfoAction(_ sender: AnyObject) {
        let playerName = self.playerNameArr[sender.tag - 1] as! String
        let jerseyNumber = self.jerseyNumberArr[sender.tag - 1] as! String
        let playerInfo = playerName + ", jersey number is " + jerseyNumber
        let alertController = UIAlertController(title: "Player Info", message: playerInfo, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
