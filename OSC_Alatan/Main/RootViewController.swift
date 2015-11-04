//
//  RootViewController.swift
//  OSC_Alatan
//
//  Created by maiziedu on 11/3/15.
//  Copyright © 2015 Alatan. All rights reserved.
//

import UIKit
import RESideMenu

class RootViewController: RESideMenu {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func awakeFromNib() {
        
        self.parallaxEnabled = false
        self.scaleContentView = true
        self.contentViewScaleValue = 0.95
        self.scaleMenuView = false
        self.contentViewShadowEnabled = true
        self.contentViewShadowRadius = 4.5
        
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("OSCTabBarController")
        self.leftMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SideMenuController")
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
