//
//  NewsViewController.swift
//  OSC_Alatan
//
//  Created by maiziedu on 11/5/15.
//  Copyright © 2015 Alatan. All rights reserved.
//

import UIKit

enum NewsListType {
    
    case NewsListTypeAllType
    case NewsListTypeNews
    case NewsListTypeSynthesis
    case NewsListTypeSoftwareRenew
    case NewsListTypeAllTypeWeekHottest
    case NewsListTypeAllTypeMonthHottest
}

class NewsViewController: OSCObjsViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 初始化方法
    func initWithNewsListType(type type: NewsListType) -> AnyObject
    {
        return ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
