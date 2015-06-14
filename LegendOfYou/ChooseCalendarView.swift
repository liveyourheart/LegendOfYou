//
//  ChooseCalendarView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/30/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class ChooseCalendarView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DailyButton(sender: AnyObject) {
        
        let systemDate = NSDate()
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        selectedDate = dateFormatter.stringFromDate(systemDate)
        
        
        
        for var index = 0; index < calLoop.calendar.count; ++index{
           
            
           if selectedDate.rangeOfString(toString(calLoop.calendar[index])) != nil{
               selectedDate = calLoop.calendar[index].date
                
            }
        }

        
        self.performSegueWithIdentifier("DailyViewSegue", sender: nil)
        
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
