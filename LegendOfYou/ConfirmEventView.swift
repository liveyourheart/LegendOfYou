//
//  ConfirmEventView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class ConfirmEventView: UIViewController {

    @IBOutlet weak var eName: UILabel!
    @IBOutlet weak var eDue: UILabel!
    @IBOutlet weak var eRepeat: UILabel!
    @IBOutlet weak var eDifficulty: UILabel!
    @IBOutlet weak var eRewardType: UILabel!
    @IBOutlet weak var eType: UILabel!
   
    @IBAction func ConfirmEventButton(sender: AnyObject) {
        
        tempEName = ""
        
        var tempEvent:Event = Event()
        tempEvent.name = newEvent.name
        tempEvent.due = newEvent.due
        tempEvent.difficulty = newEvent.difficulty
        tempEvent.repeat = newEvent.repeat
        tempEvent.rewardType = newEvent.rewardType
        tempEvent.type = newEvent.type
        tempEvent.ODWM = newEvent.ODWM
        EventArray.append(tempEvent)
        
        if tempEvent.repeat == true{
            
            var counter:Int = 0
          
            for var i = 0; i < calLoop.calendar.count; ++i{
                if tempEvent.due.rangeOfString(calLoop.calendar[i].date) != nil {

                    counter = i

                }
            }
            
            
            
            if tempEvent.ODWM == "DAILY"{
                
                for var ind = 1; ind < 32; ++ind{
                    var repeatEvent:Event = Event()
                    
                    repeatEvent.name = newEvent.name
                    repeatEvent.due = calLoop.calendar[counter + ind].date
                    repeatEvent.difficulty = newEvent.difficulty
                    repeatEvent.repeat = newEvent.repeat
                    repeatEvent.rewardType = newEvent.rewardType
                    repeatEvent.type = newEvent.type
                    repeatEvent.ODWM = newEvent.ODWM
                    
                    EventArray.append(repeatEvent)
                    
                    
                }
                
            }else if tempEvent.ODWM == "WEEKLY"{
                
                for var ind = 7; ind < 134; ++ind{
                    var repeatEvent:Event = Event()
                    
                    repeatEvent.name = newEvent.name
                    repeatEvent.due = calLoop.calendar[counter + ind].date
                    repeatEvent.difficulty = newEvent.difficulty
                    repeatEvent.repeat = newEvent.repeat
                    repeatEvent.rewardType = newEvent.rewardType
                    repeatEvent.type = newEvent.type
                    repeatEvent.ODWM = newEvent.ODWM
                    
                    EventArray.append(repeatEvent)
                   
                    
                    ind += 6
                    
                }
                

                
            }else if tempEvent.ODWM == "MONTHLY"{
                
                
                for var monthCounter = 1; monthCounter < 13; ++monthCounter{
                    
                var tempDate:myDate = myDate()
                    
                    tempDate.day = calLoop.calendar[counter].day
                    tempDate.date = calLoop.calendar[counter].date
                    tempDate.month = calLoop.calendar[counter].month
                    tempDate.year = calLoop.calendar[counter].year
                    tempDate.dayOfWeek = calLoop.calendar[counter].dayOfWeek
                    

                    
                    tempDate.month += monthCounter
                    
                    if tempDate.month > 12{
                        tempDate.month = monthCounter - 12
                        tempDate.year += 1
                    }

                    
                var repeatEvent:Event = Event()
                
                repeatEvent.name = newEvent.name
                repeatEvent.due = toString(tempDate)
                repeatEvent.difficulty = newEvent.difficulty
                repeatEvent.repeat = newEvent.repeat
                repeatEvent.rewardType = newEvent.rewardType
                repeatEvent.type = newEvent.type
                repeatEvent.ODWM = newEvent.ODWM
                
                EventArray.append(repeatEvent)

                
                    
                }
            }
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eName.text = newEvent.name
        eDue.text = newEvent.due
        
        if newEvent.repeat == true{
            eRepeat.text = "REPEAT: ON"
        }
        else{
            eRepeat.text = "REPEAT: OFF"
        }
        eDifficulty.text = newEvent.difficulty
        eRewardType.text = newEvent.rewardType
        eType.text = newEvent.type
        

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
