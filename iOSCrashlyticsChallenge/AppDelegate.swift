//
//  AppDelegate.swift
//  iOSCrashlyticsChallenge
//
//  Created by Cenker Soyak on 22.10.2023.
//

import UIKit
import FirebaseCore
import FirebaseCrashlytics

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        FirebaseApp.configure()
        return true
    }
}

