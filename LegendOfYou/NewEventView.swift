//
//  NewEventView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var tempEname:String = ""

class NewEventView: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var eName: UITextField!
    @IBOutlet weak var DueDate: UIDatePicker!
    @IBOutlet weak var diffSel: UISegmentedControl!
    
    
    
    @IBAction func ContinueEvent(sender: AnyObject) {
        
        var dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        var strDate = dateFormatter.stringFromDate(DueDate.date)
        
        newEvent.name = eName.text
        newEvent.due = strDate
    }

    @IBAction func EventOptionsButton(sender: AnyObject) {
        tempEName = eName.text
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.eName.delegate = self

        eName.text = tempEName
        diffSel.selectedSegmentIndex = 1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func diffChanged(sender: AnyObject) {
        
        if diffSel.selectedSegmentIndex == 0{
            newEvent.difficulty = "EASY"
            
        }
        if diffSel.selectedSegmentIndex == 1{
            newEvent.difficulty = "NORMAL"
        }
        if diffSel.selectedSegmentIndex == 2{
            newEvent.difficulty = "HARD"
        }
    }
   /*
    
    //COMMENTED OUT DUE TO BREAKING ON NEWEST VERSION OF Xcode.
    //Keyboard programming functions
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) ->Bool{
        
        textField.resignFirstResponder()
        
        return true
    }

*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
