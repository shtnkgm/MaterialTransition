//
//  AppDelegate.swift
//  MaterialTransition
//
//  Created by Shota Nakagami on 2019/04/01.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.rootViewController = ListViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
