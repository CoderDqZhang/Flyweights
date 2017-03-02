//
//  WebSiteFactory.swift
//  Flyweights
//
//  Created by Zhang on 2017/3/2.
//  Copyright © 2017年 Zhang. All rights reserved.
//

import UIKit

class WebSiteFactory: NSObject {
    
    var flyweights:NSDictionary!
    
    override init() {
        self.flyweights = NSDictionary.init()
    }
    
    func getWebSiteCategory(webKey:String) -> ConcreteWebSite{
        var webset:AnyObject!
        self.flyweights.enumerateKeysAndObjects({ (key, obj, stop) in
            if webKey == key as! String {
                webset = obj as AnyObject!
            }
        })
        if webset == nil {
            let concreteWebset = ConcreteWebSite()
            concreteWebset.webName = webKey
            webset = concreteWebset
            
            let mutabledic = NSMutableDictionary.init(dictionary: self.flyweights)
            mutabledic.setObject(webset, forKey: webKey as NSCopying)
            self.flyweights = NSDictionary.init(dictionary: mutabledic)
        }
        return webset as! ConcreteWebSite
    }
    
    func getWebSiteCount() -> NSInteger {
        return self.flyweights.count
    }

}
