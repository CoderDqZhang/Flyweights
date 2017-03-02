//
//  WebSiteProtocol.swift
//  Flyweights
//
//  Created by Zhang on 2017/3/2.
//  Copyright © 2017年 Zhang. All rights reserved.
//

import UIKit

class ConcreteWebSite: NSObject {
    
    var webName:String!
    func use(user:User) {
        print("网站分类：\((webName)!)" + "   用户名字   " + user.userName)
    }

}
