//
//  EventOptionView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/24/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

let rewardTypeSelection = ["THIS ATTRIBUTE ONLY", "ALL ATTRIBUTES", "EXCLUDE THIS ATTRIBUTE"]


class EventOptionView: UIViewController {
    
    
    
    @IBOutlet weak var EventTypePicker: UIPickerView!
    @IBOutlet weak var RewardRestrictionsPicker: UIPickerView!
    @IBOutlet weak var repeatSwitch: UISwitch!
    
   

    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            newEvent.repeat = true
            
        } else {
            newEvent.repeat = false
            
        }
    }
   
    @IBAction func ConfirmEventOptions(sender: AnyObject) {
        

    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

       repeatSwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        if newEvent.ODWM == "ONETIME" {
            
         repeatSwitch.enabled = false
            
        }
        
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (pickerView.tag == 1){
            return attributes.count
        }else{
            return rewardTypeSelection.count
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        
        if (pickerView.tag == 1){
            return attributes[row]
        }else{
            return rewardTypeSelection[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        
        if (pickerView.tag == 1){
            newEvent.type = attributes[row]
        }else{
            newEvent.rewardType = rewardTypeSelection[row]
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
