//
//  TodayViewController.swift
//  today
//
//  Created by James on 2020/7/19.
//  Copyright © 2020 James. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    var label:UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()

        let group = UserDefaults.init(suiteName: "group.com.today.test")
        let label = UILabel.init(frame: CGRect(x:0,y:0,width: 100,height: 50))
        label.text = group?.object(forKey: "TodaySnapshot") as? String
        self.view.addSubview(label)
        
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.newData)
        let group = UserDefaults.init(suiteName: "group.com.today.test")
        label?.text = group?.object(forKey: "TodaySnapshot") as? String
    }
    

}
