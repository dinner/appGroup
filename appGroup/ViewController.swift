//
//  ViewController.swift
//  appGroup
//
//  Created by James on 2020/7/19.
//  Copyright © 2020 James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btClicked(_ sender: Any) {
        count += 1
        let us = UserDefaults.init(suiteName: "group.com.today.test")
        us?.set(String(count), forKey: "TodaySnapshot")
    }
    
}

