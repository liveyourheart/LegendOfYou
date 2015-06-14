//
//  CreateCharacterView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class CreateCharacterView: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var cName: UITextField!
    @IBOutlet weak var attribute1: UITextField!
    @IBOutlet weak var attribute2: UITextField!
    @IBOutlet weak var attribute3: UITextField!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cName.delegate = self
        self.attribute1.delegate = self
        self.attribute2.delegate = self
        self.attribute3.delegate = self
        
        
        if player.attribute1 != "attribute 1"{
        cName.text = player.name
        attribute1.text = player.attribute1
        attribute2.text = player.attribute2
        attribute3.text = player.attribute3
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateCharacter(sender: AnyObject) {
        
        player.name = cName.text
        player.attribute1 = attribute1.text
        player.attribute2 = attribute2.text
        player.attribute3 = attribute3.text
        
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
