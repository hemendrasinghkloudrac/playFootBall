//
//  footBallPlayerTabelCell.swift
//  playFootBall
//
//  Created by HemendraSingh on 07/10/16.
//  Copyright © 2016 Kloudrac s/w. All rights reserved.
//

import UIKit

class footBallPlayerTabelCell: UITableViewCell {
    
    @IBOutlet weak var jerseyNo1: UILabel!
    @IBOutlet weak var jerseyNo2: UILabel!
    @IBOutlet weak var jerseyNo3: UILabel!
    @IBOutlet weak var jerseyNo4: UILabel!
    @IBOutlet weak var jerseyNo5: UILabel!
    @IBOutlet weak var jerseyNo6: UILabel!
    @IBOutlet weak var jerseyNo7: UILabel!
    @IBOutlet weak var jerseyNo8: UILabel!
    @IBOutlet weak var jerseyNo9: UILabel!
    @IBOutlet weak var jerseyNo10: UILabel!
    @IBOutlet weak var jerseyNo11: UILabel!
    @IBOutlet weak var playerName1: UILabel!
    @IBOutlet weak var playerName2: UILabel!
    @IBOutlet weak var playerName3: UILabel!
    @IBOutlet weak var playerName4: UILabel!
    @IBOutlet weak var playerName5: UILabel!
    @IBOutlet weak var playerName6: UILabel!
    @IBOutlet weak var playerName7: UILabel!
    @IBOutlet weak var playerName8: UILabel!
    @IBOutlet weak var playerName9: UILabel!
    @IBOutlet weak var playerName10: UILabel!
    @IBOutlet weak var playerName11: UILabel!
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var Btn4: UIButton!
    @IBOutlet weak var Btn5: UIButton!
    @IBOutlet weak var Btn6: UIButton!
    @IBOutlet weak var Btn7: UIButton!
    @IBOutlet weak var Btn8: UIButton!
    @IBOutlet weak var Btn9: UIButton!
    @IBOutlet weak var Btn10: UIButton!
    @IBOutlet weak var Btn11: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func viewPlayerDetail(playerNamesArr: NSArray, JerseyNumbersArr: NSArray) {
        jerseyNo1.text = JerseyNumbersArr[0] as? String
        jerseyNo2.text = JerseyNumbersArr[1] as? String
        jerseyNo3.text = JerseyNumbersArr[2] as? String
        jerseyNo4.text = JerseyNumbersArr[3] as? String
        jerseyNo5.text = JerseyNumbersArr[4] as? String
        jerseyNo6.text = JerseyNumbersArr[5] as? String
        jerseyNo7.text = JerseyNumbersArr[6] as? String
        jerseyNo8.text = JerseyNumbersArr[7] as? String
        jerseyNo9.text = JerseyNumbersArr[8] as? String
        jerseyNo10.text = JerseyNumbersArr[9] as? String
        jerseyNo11.text = JerseyNumbersArr[10] as? String
        playerName1.text = playerNamesArr[0] as? String
        playerName2.text = playerNamesArr[1] as? String
        playerName3.text = playerNamesArr[2] as? String
        playerName4.text = playerNamesArr[3] as? String
        playerName5.text = playerNamesArr[4] as? String
        playerName6.text = playerNamesArr[5] as? String
        playerName7.text = playerNamesArr[6] as? String
        playerName8.text = playerNamesArr[7] as? String
        playerName9.text = playerNamesArr[8] as? String
        playerName10.text = playerNamesArr[9] as? String
        playerName11.text = playerNamesArr[10] as? String
    }
    
}
