//
//  CreateEventView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var newEvent = Event()
var tempEName:String = ""

class CreateEventView: UIViewController {
    
    
    
    
    @IBAction func OneTime(sender: AnyObject) {
        newEvent.repeat = false
        newEvent.ODWM = "ONETIME"
        self.performSegueWithIdentifier("NewEventSegue", sender: nil)
    
    }
    
    @IBAction func Daily(sender: AnyObject) {
        newEvent.repeat = true
        newEvent.ODWM = "DAILY"
        self.performSegueWithIdentifier("NewEventSegue", sender: nil)
    }
    
    @IBAction func Weekly(sender: AnyObject) {
        newEvent.repeat = true
        newEvent.ODWM = "WEEKLY"
        self.performSegueWithIdentifier("NewEventSegue", sender: nil)
    }
    
    @IBAction func Monthly(sender: AnyObject) {
        newEvent.repeat = true
        newEvent.ODWM = "MONTHLY"
        self.performSegueWithIdentifier("NewEventSegue", sender: nil)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
