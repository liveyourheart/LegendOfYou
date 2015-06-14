//
//  ChooseAvatarView.swift
//  LegendOfYou
//
//  Created by MATTHEW MCHUGHES on 2/19/15.
//  Copyright (c) 2015 MATTHEW MCHUGHES. All rights reserved.
//

import UIKit

class ChooseAvatarView: UIViewController {
    
    var images:[String] = ["fArcher.png", "eArcher.png", "mKnight.png", "fKnight.png", "fWarlock.png", "mRanger.png", "mArcher.png", "mHammer.png"]
    var avatarCount = 0
    var avatar = "fArcher.png"
    
    @IBOutlet weak var avatarImage: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AvatarBack(sender: AnyObject) {
        avatarCount--
        if avatarCount < 0 {
            avatarCount = images.count-1}
        avatar = images[avatarCount]
        avatarImage.image = UIImage(named: avatar)

    }

 
    @IBAction func AvatarNext(sender: AnyObject) {
        avatarCount++
        if avatarCount >= images.count {
            avatarCount = 0}
        avatar = images[avatarCount]
        avatarImage.image = UIImage(named: avatar)
    }
    

    @IBAction func AvatarConfirm(sender: AnyObject) {
        player.avatarFile = avatar
        player.cubix = 1000
        player.isCreated = true
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
