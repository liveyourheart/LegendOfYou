//
//  EventSelectionView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/20/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var finishedEvent = Event()


class EventSelectionView: UIViewController {
    
    
    @IBOutlet weak var EventLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var items:[String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        EventLabel.text = selectedDate
        
        
        for var index = 0; index < EventArray.count; ++index {
            
            if EventArray[index].due.rangeOfString(selectedDate) != nil{
                items.append(EventArray[index].name)
                
            }
          
        }

        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        var tempEvent = Event()
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        for var index = 0; index < EventArray.count; index++ {

            if (EventArray[index].name == self.items[indexPath.row]){
              
                tempEvent = EventArray[index];
                
            }
        }
        
        if (tempEvent.ODWM == "DAILY"){
            
            cell.backgroundColor = UIColor.greenColor()
        } else if (tempEvent.ODWM == "WEEKLY"){
            
            cell.backgroundColor = UIColor.cyanColor()
        } else if (tempEvent.ODWM == "MONTHLY"){
            
            cell.backgroundColor = UIColor.purpleColor()
        } else{
           
        cell.backgroundColor = UIColor.orangeColor()
        }
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        
    }

    @IBAction func FinishEventButton(sender: AnyObject) {
        
        let indexPath = tableView.indexPathForSelectedRow();
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as UITableViewCell!;
        
        for var index = 0; index < EventArray.count; index++ {
           
            if (EventArray[index].name == currentCell.textLabel!.text){
                finishedEvent.difficulty = EventArray[index].difficulty
                finishedEvent.due = selectedDate
                finishedEvent.name = EventArray[index].name
                finishedEvent.ODWM = EventArray[index].ODWM
                finishedEvent.repeat = EventArray[index].repeat
                finishedEvent.rewardType = EventArray[index].rewardType
                finishedEvent.type = EventArray[index].type
                
            }
    }
        
        self.performSegueWithIdentifier("finishEventSegue", sender: nil)
        
    }
    
    @IBAction func PrevButton(sender: AnyObject) {
        
        var tempDate = myDate()
        
        for var index = 0; index < calLoop.calendar.count; ++index{
            
            if calLoop.calendar[index].date == selectedDate{
                tempDate = calLoop.calendar[index - 1]
            }
        }
        
        selectedDate = tempDate.date
              
    }
    
    @IBAction func NextButton(sender: AnyObject) {
        
        var tempDate = myDate()
        
        for var index = 0; index < calLoop.calendar.count; ++index{
            
            if calLoop.calendar[index].date == selectedDate{
                tempDate = calLoop.calendar[index + 1]
            }
        }
        
        selectedDate = tempDate.date
        
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
