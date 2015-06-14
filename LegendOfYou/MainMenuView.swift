//
//  MainMenuView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var player = Character()
var rewardArray: [Reward] = []
var EventArray: [Event] = []
var calLoop:myCalendar = myCalendar()
var selectedDate:String = "1/1/15"
let systemDate = NSDate()
let cal = NSCalendar.currentCalendar()
let components = cal.components(.CalendarUnitMonth | .CalendarUnitYear, fromDate: systemDate)
let systemMonth = components.month
let systemYear = components.year

class MainMenuView: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var monthLoop:myMonth = myMonth()
        var dayLoop:myDate = myDate()
        var dayLoopCounter:Int = 4
        
        
        //create calendar
        
        if calLoop.isCreated == false{
        
            //create array of dates and save into calLoop
            
            for var year = 15; year < 17; ++year{
                
                for var month = 1; month < 13; ++month{
                    
                    for var day = 1; day <= monthLoop.numOfDays[month - 1]; ++day{
                        var tempDate:myDate = myDate()
                        tempDate.day = day;
                        tempDate.month = month;
                        tempDate.year = year;
                        tempDate.date = toString(tempDate)
                        calLoop.calendar.append(tempDate)
                    }
                    
                }
                
            }
            
            
            //set days of week for calLoop
            
            for var index = 0; index < calLoop.calendar.count; ++index{

                calLoop.calendar[index].dayOfWeek = dayLoop.days[dayLoopCounter]
                dayLoopCounter++;
                if dayLoopCounter > 6{
                    dayLoopCounter = 0
                }
                
            }
            
            calLoop.isCreated = true
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CharacterSelect(sender: AnyObject) {
    
        if player.isCreated == true{
            self.performSegueWithIdentifier("ShowCharacterSegue", sender: nil)
        }else{
            self.performSegueWithIdentifier("createCharacterSegue", sender: nil)
        }
        
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
