//
//  MonthCalView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/31/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class MonthCalView: UIViewController {

    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but9: UIButton!
    @IBOutlet weak var but10: UIButton!
    @IBOutlet weak var but11: UIButton!
    @IBOutlet weak var but12: UIButton!
    @IBOutlet weak var but13: UIButton!
    @IBOutlet weak var but14: UIButton!
    @IBOutlet weak var but15: UIButton!
    @IBOutlet weak var but16: UIButton!
    @IBOutlet weak var but17: UIButton!
    @IBOutlet weak var but18: UIButton!
    @IBOutlet weak var but19: UIButton!
    @IBOutlet weak var but20: UIButton!
    @IBOutlet weak var but21: UIButton!
    @IBOutlet weak var but22: UIButton!
    @IBOutlet weak var but23: UIButton!
    @IBOutlet weak var but24: UIButton!
    @IBOutlet weak var but25: UIButton!
    @IBOutlet weak var but26: UIButton!
    @IBOutlet weak var but27: UIButton!
    @IBOutlet weak var but28: UIButton!
    @IBOutlet weak var but29: UIButton!
    @IBOutlet weak var but30: UIButton!
    @IBOutlet weak var but31: UIButton!
    @IBOutlet weak var but32: UIButton!
    @IBOutlet weak var but33: UIButton!
    @IBOutlet weak var but34: UIButton!
    @IBOutlet weak var but35: UIButton!
    @IBOutlet weak var but36: UIButton!
    @IBOutlet weak var but37: UIButton!


    @IBOutlet weak var monthLabel: UILabel!

    
    var year:myMonth = myMonth()
    var monthCounter:Int = 0
    var dayCounter:Int = 0
    var yearCounter:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        monthCounter = systemMonth - 1
        yearCounter = systemYear
        setDayCounter(year)
        monthLabel.text = year.namesofMonths[monthCounter]
        setButtons(dayCounter, pos: monthCounter)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prevButton(sender: AnyObject) {
    
        if monthCounter >= 1{
            monthCounter -= 1
        } else{
            monthCounter = 11
            yearCounter = 2015
        }
        
        monthLabel.text = year.namesofMonths[monthCounter]
        setDayCounter(year)
        setButtons(dayCounter, pos: monthCounter)
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        if monthCounter <= 10{
            monthCounter += 1
        } else{
            monthCounter = 0
            yearCounter = 2016
        }

        
        monthLabel.text = year.namesofMonths[monthCounter]
        setDayCounter(year)
        setButtons(dayCounter, pos: monthCounter)
        
        
    }
    
    
    @IBAction func button1(sender: AnyObject) {
        selectedDate = setDateToSend(but1.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button2(sender: AnyObject) {
        selectedDate = setDateToSend(but2.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button3(sender: AnyObject) {
        selectedDate = setDateToSend(but3.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button4(sender: AnyObject) {
        selectedDate = setDateToSend(but4.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button5(sender: AnyObject) {
        selectedDate = setDateToSend(but5.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button6(sender: AnyObject) {
        selectedDate = setDateToSend(but6.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button7(sender: AnyObject) {
        selectedDate = setDateToSend(but7.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button8(sender: AnyObject) {
        selectedDate = setDateToSend(but8.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }

    @IBAction func Button9(sender: AnyObject) {
        selectedDate = setDateToSend(but10.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button10(sender: AnyObject) {
        selectedDate = setDateToSend(but9.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)

    }

    
    @IBAction func Button11(sender: AnyObject) {
        selectedDate = setDateToSend(but11.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button12(sender: AnyObject) {
        selectedDate = setDateToSend(but12.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button13(sender: AnyObject) {
        selectedDate = setDateToSend(but13.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button14(sender: AnyObject) {
        selectedDate = setDateToSend(but14.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button15(sender: AnyObject) {
        selectedDate = setDateToSend(but15.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button16(sender: AnyObject) {
        selectedDate = setDateToSend(but16.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button17(sender: AnyObject) {
        selectedDate = setDateToSend(but17.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button18(sender: AnyObject) {
        selectedDate = setDateToSend(but18.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button19(sender: AnyObject) {
        selectedDate = setDateToSend(but19.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button20(sender: AnyObject) {
        selectedDate = setDateToSend(but20.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button21(sender: AnyObject) {
        selectedDate = setDateToSend(but21.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button22(sender: AnyObject) {
        selectedDate = setDateToSend(but22.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button23(sender: AnyObject) {
        selectedDate = setDateToSend(but23.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
 
    
    @IBAction func Button24(sender: AnyObject) {
        selectedDate = setDateToSend(but24.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button25(sender: AnyObject) {
        selectedDate = setDateToSend(but25.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }

    
    @IBAction func Button26(sender: AnyObject) {
        selectedDate = setDateToSend(but26.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button27(sender: AnyObject) {
        selectedDate = setDateToSend(but27.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }

    @IBAction func Button28(sender: AnyObject) {
        selectedDate = setDateToSend(but28.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button29(sender: AnyObject) {
        selectedDate = setDateToSend(but29.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    
    @IBAction func Button30(sender: AnyObject) {
        selectedDate = setDateToSend(but30.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button31(sender: AnyObject) {
        selectedDate = setDateToSend(but31.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    @IBAction func Button32(sender: AnyObject) {
        selectedDate = setDateToSend(but32.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button33(sender: AnyObject) {
        selectedDate = setDateToSend(but33.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button34(sender: AnyObject) {
        selectedDate = setDateToSend(but34.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button35(sender: AnyObject) {
        selectedDate = setDateToSend(but35.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button36(sender: AnyObject) {
        selectedDate = setDateToSend(but36.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    @IBAction func Button37(sender: AnyObject) {
        selectedDate = setDateToSend(but37.titleLabel!.text!)
        self.performSegueWithIdentifier("MonthSelectionSegue", sender: nil)
    }
    
    
    
    
    func setDayCounter(month: myMonth){
        
        var day:String = ""
        
        if yearCounter == 2016{
            day = month.startingDay2016[monthCounter]
        } else{
            day = month.startingDay2015[monthCounter]
        }
        switch day{
            
        case "S":
            dayCounter = 1
        case "M":
            dayCounter = 0
        case "T":
            dayCounter = -1
        case "W":
            dayCounter = -2
        case "R":
            dayCounter = -3
        case "F":
            dayCounter = -4
        case "Sa":
            dayCounter = -5
        default:
            dayCounter = 1
            
        }
    }
    

    func setButtons(c:Int, pos:Int){
        
        var tempCounter = c
        
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but1.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but1.enabled = true
        }else{
            but1.setTitle("", forState: UIControlState.Normal)
            but1.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but2.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but2.enabled = true
        }else{
            but2.setTitle("", forState: UIControlState.Normal)
            but2.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but3.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but3.enabled = true
        }else{
            but3.setTitle("", forState: UIControlState.Normal)
            but3.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but4.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but4.enabled = true
        }else{
            but4.setTitle("", forState: UIControlState.Normal)
            but4.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but5.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but5.enabled = true
        }else{
            but5.setTitle("", forState: UIControlState.Normal)
            but5.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but6.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but6.enabled = true
        }else{
            but6.setTitle("", forState: UIControlState.Normal)
            but6.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but7.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but7.enabled = true
        }else{
            but7.setTitle("", forState: UIControlState.Normal)
            but7.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but8.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but8.enabled = true
        }else{
            but8.setTitle("", forState: UIControlState.Normal)
            but8.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but9.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but9.enabled = true
        }else{
            but9.setTitle("", forState: UIControlState.Normal)
            but9.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but10.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but10.enabled = true
        }else{
            but10.setTitle("", forState: UIControlState.Normal)
            but10.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but11.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but11.enabled = true
        }else{
            but11.setTitle("", forState: UIControlState.Normal)
            but11.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but12.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but12.enabled = true
        }else{
            but12.setTitle("", forState: UIControlState.Normal)
            but12.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but13.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but13.enabled = true
        }else{
            but13.setTitle("", forState: UIControlState.Normal)
            but13.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but14.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but14.enabled = true
        }else{
            but14.setTitle("", forState: UIControlState.Normal)
            but14.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but15.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but15.enabled = true
        }else{
            but15.setTitle("", forState: UIControlState.Normal)
            but15.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but16.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but16.enabled = true
        }else{
            but16.setTitle("", forState: UIControlState.Normal)
            but16.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but17.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but17.enabled = true
        }else{
            but17.setTitle("", forState: UIControlState.Normal)
            but17.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but18.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but18.enabled = true
        }else{
            but18.setTitle("", forState: UIControlState.Normal)
            but18.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but19.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but19.enabled = true
        }else{
            but19.setTitle("", forState: UIControlState.Normal)
            but19.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but20.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but20.enabled = true
        }else{
            but20.setTitle("", forState: UIControlState.Normal)
            but20.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but21.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but21.enabled = true
        }else{
            but21.setTitle("", forState: UIControlState.Normal)
            but21.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but22.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but22.enabled = true
        }else{
            but22.setTitle("", forState: UIControlState.Normal)
            but22.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but23.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but23.enabled = true
        }else{
            but23.setTitle("", forState: UIControlState.Normal)
            but23.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but24.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but24.enabled = true
        }else{
            but24.setTitle("", forState: UIControlState.Normal)
            but24.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but25.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but25.enabled = true
        }else{
            but25.setTitle("", forState: UIControlState.Normal)
            but25.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but26.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but26.enabled = true
        }else{
            but26.setTitle("", forState: UIControlState.Normal)
            but26.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but27.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but27.enabled = true
        }else{
            but27.setTitle("", forState: UIControlState.Normal)
            but27.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but28.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but28.enabled = true
        }else{
            but28.setTitle("", forState: UIControlState.Normal)
            but28.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but29.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but29.enabled = true
        }else{
            but29.setTitle("", forState: UIControlState.Normal)
            but29.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but30.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but30.enabled = true
        }else{
            but30.setTitle("", forState: UIControlState.Normal)
            but30.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but31.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but31.enabled = true
        }else{
            but31.setTitle("", forState: UIControlState.Normal)
            but31.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but32.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but32.enabled = true
        }else{
            but32.setTitle("", forState: UIControlState.Normal)
            but32.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but33.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but33.enabled = true
        }else{
            but33.setTitle("", forState: UIControlState.Normal)
            but33.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but34.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but34.enabled = true
        }else{
            but34.setTitle("", forState: UIControlState.Normal)
            but34.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but35.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but35.enabled = true
        }else{
            but35.setTitle("", forState: UIControlState.Normal)
            but35.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but36.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but36.enabled = true
        }else{
            but36.setTitle("", forState: UIControlState.Normal)
            but36.enabled = false
        }
        tempCounter++;
        if tempCounter > 0 && tempCounter <= year.numOfDays[pos]{
            but37.setTitle(String(tempCounter), forState: UIControlState.Normal)
            but37.enabled = true
        }else{
            but37.setTitle("", forState: UIControlState.Normal)
            but37.enabled = false
        }
               
        
    }
    
    func setDateToSend(m: String) -> String{
        
        var tempString:String = String(monthCounter + 1)
        tempString += "/"
        tempString += m
        tempString += "/"
        tempString += String(yearCounter - 2000)

        return tempString
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
