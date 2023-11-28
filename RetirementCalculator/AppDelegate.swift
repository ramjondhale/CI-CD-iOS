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
        AppCenter.start(withAppSecret: "daf941aa-4f6a-4109-8da1-a88ecd6bf04f", services:[
            Analytics.self,
            Crashes.self
        ])

        return true
    }

}

