//
//  ViewController.swift
//  AppsOnAirIOSCore
//
//  Created by harshil-gandhi-16 on 07/17/2024.
//  Copyright (c) 2024 harshil-gandhi-16. All rights reserved.
//

import UIKit
import AppsOnAirIOSCore

class ViewController: UIViewController {

    let appUpdateManager = AppsOnAirServices()

    override func viewDidLoad() {
        super.viewDidLoad()
         let appId = appUpdateManager.getAppId()
         print(appId)
         let  result = appUpdateManager.networkStatusDidChange()   
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

