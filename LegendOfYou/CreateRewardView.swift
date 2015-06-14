//
//  CreateRewardView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var newReward = Reward()
var attributes = [player.attribute1, player.attribute2, player.attribute3, "OTHER"]
var tempRName:String = ""
var tempRCost:String = ""

class CreateRewardView: UIViewController, UITextFieldDelegate {

    
   
    
    @IBOutlet weak var rName: UITextField!
    @IBOutlet weak var attPicker: UIPickerView!
    @IBOutlet weak var rCost: UITextField!
    @IBOutlet weak var validateLabel: UILabel!
    
    @IBAction func ConfirmReward(sender: AnyObject) {
        newReward.name = rName.text
        
        if rCost.text != ""{
            if rCost.text.toInt() < 0 || rCost.text.toInt() > 999999{
                validateLabel.text = "you must enter a positive integer below 1000000"
            }else{
        newReward.cost = rCost.text.toInt()!
                self.performSegueWithIdentifier("ConfirmRewardSegue", sender: nil)}
        }else{
            validateLabel.text = "YOU MUST ENTER A COST"
        }
        
        
        
    }
    @IBAction func RewardOptionsButton(sender: AnyObject) {
        tempRName = rName.text
        tempRCost = rCost.text
    }
    
    @IBOutlet weak var RewardOptions: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rCost.delegate = self
        self.rName.delegate = self
        
        rCost.keyboardType = UIKeyboardType.DecimalPad
        rName.text = tempRName
        rCost.text = tempRCost
        
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
        return attributes.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return attributes[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        
        newReward.type = attributes[row]
        
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
