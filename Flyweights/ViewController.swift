//
//  ViewController.swift
//  Flyweights
//
//  Created by Zhang on 2017/3/2.
//  Copyright © 2017年 Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let factory = WebSiteFactory()
        
        let typel = factory.getWebSiteCategory(webKey: "首页")
        let user1 = User()
        user1.userName = "张三"
        typel.use(user: user1)
        
        let type2 = factory.getWebSiteCategory(webKey: "商店")
        let user2 = User()
        user2.userName = "李四"
        type2.use(user: user2)
        
        let type3 = factory.getWebSiteCategory(webKey: "案例")
        let user3 = User()
        user3.userName = "王五"
        type3.use(user: user3)
        
        let count = factory.getWebSiteCount()
        print(count)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

