//
//  ConfirmPurchaseView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var freeReward:Bool = false
var freeRewardCounter:Int = 0

class ConfirmPurchaseView: UIViewController {
    
    @IBOutlet weak var rewardImg: UIImageView!
    @IBOutlet weak var rName: UILabel!
    @IBOutlet weak var rCost: UILabel!
    
    @IBAction func ConfirmPurchase(sender: AnyObject) {
        
        if (rewardPurchase.cost > player.cubix){
            rCost.text = "YOU NEED MORE CUBIX!"
        }else{
            
            if freeReward == true{
                
                freeRewardCounter -= 1;
                
                if freeRewardCounter <= 0{
                    freeReward = false
                    freeRewardCounter = 0
                }
            } else{
            
            player.cubix -= rewardPurchase.cost;
                
            }
            
            if rewardPurchase.oneTime == true{
            
                for var i = 0; i < rewardArray.count; ++i{
                    if rewardArray[i].name == rewardPurchase.name{
                        rewardArray.removeAtIndex(i)
                    }
                }
            }

            
            self.performSegueWithIdentifier("PostPurchaseSegue", sender: nil)
        }
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rName.text = rewardPurchase.name
        rCost.text = String(rewardPurchase.cost)

        if freeReward == false{
            rewardImg.hidden = true
        } else{
            rCost.text = "This one is on us!"
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
