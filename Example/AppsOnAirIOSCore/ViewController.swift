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

    override func viewDidLoad() {
        super.viewDidLoad()
        let appUpdateManager = AppsOnAirCoreServices.shared
        let appId = appUpdateManager.getAppId()
        print("App Id: \(appId)")
        appUpdateManager.networkStatusListenerHandler { Connected in
            print("isConnect \(Connected)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

