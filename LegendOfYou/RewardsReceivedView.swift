//
//  RewardsReceivedView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 4/6/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class RewardsReceivedView: UIViewController {

    @IBOutlet weak var rewardLabel: UILabel!
    @IBOutlet weak var bingoLabel: UILabel!
    @IBOutlet weak var bingoImage: UIImageView!
    
    @IBOutlet weak var bingo2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rewardLabel.text = "FOR YOUR WORK, YOU HAVE BEEN AWARDED " + String(cubixRewarded) + " Cubix!"
        if bingo == false{
            bingoLabel.text = ""
            bingoImage.hidden = true
        }
        
        if bingo2 == true {
        
        bingo2Label.text = "The Shopkeeper wants you to have a bonus: " + bonus
        
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
