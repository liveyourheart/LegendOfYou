//
//  RewardOptionsView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/3/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class RewardOptionsView: UIViewController {
    
    @IBOutlet weak var RestrictionsPicker: UIPickerView!
    @IBOutlet weak var oneTimeSwitch: UISwitch!
 
    
    
    func stateChanged(switchState: UISwitch) {
        if switchState.on {
            newReward.oneTime = true
            
        } else {
            newReward.oneTime = false
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
       oneTimeSwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
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
        return rewardTypeSelection.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return rewardTypeSelection[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        
        newReward.rewardRestrictions = rewardTypeSelection[row]
        
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
