//
//  AppDelegate.swift
//  RetirementCalculator
//
//  Created by Ram Jondhale on 28/11/23.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AppCenter.start(withAppSecret: "6e4a7c9c-57c5-4309-9d78-6b58cc09a4e0", services:[
            Analytics.self,
            Crashes.self
        ])

        return true
    }

}

