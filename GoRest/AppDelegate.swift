//
//  AppDelegate.swift
//  GoRest
//
//  Created by Luis Angel Inga Mendoza on 19/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let firstVC = UINavigationController(rootViewController: HomeConfigurator.make())
        self.window?.rootViewController = firstVC
        self.window?.makeKeyAndVisible()
        
        
        return true
    }


}

