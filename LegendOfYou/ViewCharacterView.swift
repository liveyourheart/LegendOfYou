//
//  ViewCharacterView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class ViewCharacterView: UIViewController {

    
    @IBOutlet weak var cName: UILabel!
    @IBOutlet weak var att1Label: UILabel!
    @IBOutlet weak var att2Label: UILabel!
    @IBOutlet weak var att3Label: UILabel!

    @IBOutlet weak var cubixLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
   
    var timer = NSTimer()
    var count:Int = 0;
    
    func updateTime() {
        
        count++
        
        if(count % 8 == 0){
            
            if(att1Label.text == player.attribute1){
                att1Label.text = String(player.attributeValue1)
                att2Label.text = String(player.attributeValue2)
                att3Label.text = String(player.attributeValue3)
            }else{
                att1Label.text = player.attribute1
                att2Label.text = player.attribute2
                att3Label.text = player.attribute3
            }
            
        }
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cName.text = player.name
        att1Label.text = player.attribute1
        att2Label.text = player.attribute2
        att3Label.text = player.attribute3
        avatarImage.image = UIImage(named: player.avatarFile)
        cubixLabel.text = String(player.cubix)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)

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
