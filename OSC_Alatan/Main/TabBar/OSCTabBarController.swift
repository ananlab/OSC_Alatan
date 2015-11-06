//
//  OSCTabBarController.swift
//  OSC_Alatan
//
//  Created by maiziedu on 11/3/15.
//  Copyright © 2015 Alatan. All rights reserved.
//

import UIKit

class OSCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 综合
        let newsSVC: SwipableViewController = SwipableViewController()
        
        // 动弹
        let tweetsSVC: SwipableViewController = SwipableViewController()
        
        
        // 发现
        let discoverSB = UIStoryboard.init(name: "Discover", bundle: NSBundle.mainBundle())
        let discoverNav = discoverSB.instantiateViewControllerWithIdentifier("Nav")
        
        // 我
        let homePageSB = UIStoryboard.init(name: "Homepage", bundle: NSBundle.mainBundle())
        let homePageNav = homePageSB.instantiateViewControllerWithIdentifier("Nav")
        
        
        // 构建 TabBar 控制器
        self.viewControllers = [newsSVC, tweetsSVC, UIViewController(), discoverNav, homePageNav]
        let titles = ["综合", "动弹", "", "发现", "我"]
        let images = ["tabbar-news", "tabbar-tweet", "", "tabbar-discover", "tabbar-me"]
        for (index, obj) in (self.tabBar.items?.enumerate())! {
            let item: UITabBarItem = obj
            item.title = titles[index]
            item.image = UIImage(named: images[index])
            item.selectedImage = UIImage(named: "\(images[index])-selected")
        }
        
        self.tabBar.items![2].enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
