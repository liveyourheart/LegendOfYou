//
//  FinishEventView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/20/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var levelUp1:Int = 30000
var levelUp2:Int = 30000
var levelUp3:Int = 30000
var levelUpOther:Int = 30000
var bingo:Bool = false
var bingo2:Bool = false
var bonus:String = ""
var cubixRewarded:Int = 0

class FinishEventView: UIViewController {

    @IBOutlet weak var eName: UILabel!
    @IBOutlet weak var eDue: UILabel!
    @IBOutlet weak var storyLabel: UILabel!

    @IBOutlet weak var badguyImage: UIImageView!
    
    var badguyImages:[String] = ["badguy1.png", "badguy2.png", "badguy3.png", "badguy4.png" ]
    var badguy = "badguy1.png"
    var startingAmt:Int = 0
    var endingAmt:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        eName.text = finishedEvent.name
        eDue.text = finishedEvent.due
        bingo = false
        storyLabel.text = "Oh no! A bad guy has appeared!  The only way to defeat him is to " + finishedEvent.name + "!"
        let diceRoll = Int(arc4random_uniform(4))
        badguy = badguyImages[diceRoll]
        badguyImage.image = UIImage(named: badguy)
        startingAmt = player.cubix
        
               // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func EventCompletedButton(sender: AnyObject) {
        
        
        //grant cubix and xp accordingly
       
        
        if finishedEvent.ODWM == "DAILY"{
            
            if finishedEvent.difficulty == "EASY"{
                
                player.cubix += 50;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 500
                    
                } else{
                    
                    player.attributeValueOther += 500
                }
                
            } else if finishedEvent.difficulty == "HARD"{
                
                 player.cubix += 150;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 1500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 1500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 1500
                    
                } else{
                    
                    player.attributeValueOther += 1500
                }
                
            } else{
                
                player.cubix += 100;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 1000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 1000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 1000
                    
                } else{
                    
                    player.attributeValueOther += 1000
                }
                
            }

        
        } else if finishedEvent.ODWM == "WEEKLY"{
            
            if finishedEvent.difficulty == "EASY"{
                
                 player.cubix += 250;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 2500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 2500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 2500
                    
                } else{
                    
                    player.attributeValueOther += 2500
                }
                
            } else if finishedEvent.difficulty == "HARD"{
                
                 player.cubix += 750;

                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 7500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 7500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 7500
                    
                } else{
                    
                    player.attributeValueOther += 7500
                }

                
            } else{
                
                 player.cubix += 500;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 5000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 5000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 5000
                    
                } else{
                    
                    player.attributeValueOther += 5000
                }
                
            }

            
        } else if finishedEvent.ODWM == "MONTHLY"{
            
            if finishedEvent.difficulty == "EASY"{
                
                 player.cubix += 2000;
                
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 20000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 20000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 20000
                    
                } else{
                    
                    player.attributeValueOther += 20000
                }
                
            } else if finishedEvent.difficulty == "HARD"{
                
                player.cubix += 3000;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 30000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 30000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 30000
                    
                } else{
                    
                    player.attributeValueOther += 30000
                }

                
            } else{
                
                 player.cubix += 2500;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 25000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 25000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 25000
                    
                } else{
                    
                    player.attributeValueOther += 25000
                }

                
            }

            
        } else {
            
            if finishedEvent.difficulty == "EASY"{
                
                 player.cubix += 750;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 7500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 7500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 7500
                    
                } else{
                    
                    player.attributeValueOther += 7500
                }
                
            } else if finishedEvent.difficulty == "HARD"{
                
                 player.cubix += 1250;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 12500
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 12500
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 12500
                    
                } else{
                    
                    player.attributeValueOther += 12500
                }
                
            } else{
                
                 player.cubix += 1000;
                
                if finishedEvent.type == player.attribute1{
                    
                    player.attributeValue1 += 10000
                    
                } else if finishedEvent.type == player.attribute2{
                    
                    player.attributeValue2 += 10000
                    
                } else if finishedEvent.type == player.attribute3{
                    
                    player.attributeValue3 += 10000
                    
                } else{
                    
                    player.attributeValueOther += 10000
                }
                
            }

            
        }
       
        
        
        //check level up for rewards
        
        if player.attributeValue1 >= levelUp1{
            
            player.cubix += 5000
            levelUp1 += 30000
            
        } else if player.attributeValue2 >= levelUp2{
            
            player.cubix += 5000
            levelUp2 += 30000
            
        } else if player.attributeValue3 >= levelUp3{
            
            player.cubix += 5000
            levelUp3 += 30000
            
        } else if player.attributeValueOther >= levelUpOther {
            
            player.cubix += 5000
            levelUpOther += 30000
        }
        
        
        //rng for rare cubix
        
        let diceRoll = Int(arc4random_uniform(3))
        if diceRoll % 2 == 0{
            freeRewardCounter += 1
            freeReward = true
            bingo = true
        }
        
        let diceRoll2 = Int(arc4random_uniform(3))
            if diceRoll2 % 1 == 0{
            
                bingo2 = true
                var bonuses:[String] = []
                
                for var index = 0; index < rewardArray.count; ++index{
                    
                    if rewardArray[index].oneTime == false{
                        
                        if finishedEvent.rewardType == "All Attributes"{
                        
                            if rewardArray[index].rewardRestrictions == "ALL ATTRIBUTES"{
                                bonuses.append(rewardArray[index].name)
                            } else if rewardArray[index].rewardRestrictions == "THIS ATTRIBUTE ONLY" && finishedEvent.type == rewardArray[index].type{
                                
                                bonuses.append(rewardArray[index].name)
                            }
                        } else if finishedEvent.rewardType == "THIS ATTRIBUTE ONLY"{
                         
                            for var i = 0; i < rewardArray.count; ++i{
                                
                                if rewardArray[i].type == finishedEvent.type && rewardArray[i].rewardRestrictions != "EXCLUDE THIS ATTRIBUTE"{
                                 
                                    bonuses.append(rewardArray[i].name)
                                    
                                }
                            }
                        } else {
                            
                            for var i = 0; i < rewardArray.count; ++i{
                                if finishedEvent.type != rewardArray[i].type && rewardArray[i].rewardRestrictions != "THIS ATTRIBUTE ONLY"{
                                 
                                    bonuses.append(rewardArray[i].name)
                                }
                            }
                        }
                        
                        
                    }
                        
                        
                   
                }
                
                for var i = 0; i < bonuses.count; ++i{
                    
                }
                let bonusesCount = bonuses.count
                let diceRoll3 = Int(arc4random_uniform(10000))
                
                if bonusesCount == 0{
                    bingo2 = false
                } else {
                var diceBonus = diceRoll3 % bonusesCount
                    
                    bonus = bonuses[diceBonus]
                    
                }

        }
        

        
        //delete event from array
        var delete:Int = 0
        for var i = 0; i < EventArray.count; ++i {


            if (finishedEvent.name == EventArray[i].name && EventArray[i].due.rangeOfString(finishedEvent.due) != nil){
            
                delete = i;
                EventArray.removeAtIndex(delete);

            }
        }
    
        //discover bonuses
        endingAmt = player.cubix
        cubixRewarded = endingAmt - startingAmt
        
        //segue
        self.performSegueWithIdentifier("rewardPageSegue", sender: nil)
        
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
