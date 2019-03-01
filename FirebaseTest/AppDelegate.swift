//
//  AppDelegate.swift
//  FirebaseTest
//
//  Created by MisnikovRoman on 28/02/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import UIKit
import Firebase
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        initializeAnalyticsFrameworks()
        
        return true
    }
}

extension AppDelegate {
    func initializeAnalyticsFrameworks() {
        // Firebase
        FirebaseApp.configure()
        // Crashlytics
        Fabric.with([Crashlytics.self])
    }
}
