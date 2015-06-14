//
//  LoopView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 3/31/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class LoopView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.performSegueWithIdentifier("LoopFromSegue", sender: nil)
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
