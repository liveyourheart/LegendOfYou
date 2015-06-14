//
//  ShopView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/5/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

var rewardPurchase = Reward()


class ShopView: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    var items:[String] = []
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for var index = 0; index < rewardArray.count ; ++index {
            
            items.append(rewardArray[index].name)
        }

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rewardArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        cell.backgroundColor = UIColor.yellowColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        

    }

    @IBAction func PurchaseButton(sender: AnyObject) {
        
        let indexPath = tableView.indexPathForSelectedRow();
        
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as UITableViewCell!;
 
        for var index = 0; index < rewardArray.count; index++ {

            if (rewardArray[index].name == currentCell.textLabel!.text){
                rewardPurchase = rewardArray[index];
                
        }

        }
        
          self.performSegueWithIdentifier("ConfirmPurchaseSegue", sender: nil)
    
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
