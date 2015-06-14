//
//  ConfirmReward.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/3/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class ConfirmRewardView: UIViewController {
    
    @IBOutlet weak var rName: UILabel!
    @IBOutlet weak var rCost: UILabel!
    @IBOutlet weak var rType: UILabel!
    @IBOutlet weak var rOneTime: UILabel!
    @IBOutlet weak var rRestrictions: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        var stringCost = String(newReward.cost)
        
        rName.text = newReward.name
        rCost.text = stringCost
        rType.text = newReward.type
        if newReward.oneTime == true{
            rOneTime.text = "ONE TIME ON"
        }else {
            
        rOneTime.text = "ONE TIME OFF"}
        
        rRestrictions.text = newReward.rewardRestrictions
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ConfirmReward(sender: UIButton) {
        
        
        tempRName = ""
        tempRCost = ""
        
        var tempReward:Reward = Reward()
        tempReward.name = newReward.name
        tempReward.cost = newReward.cost
        tempReward.oneTime = newReward.oneTime
        tempReward.rewardRestrictions = newReward.rewardRestrictions
        tempReward.type = newReward.type
        
        rewardArray.append(tempReward)
        

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
