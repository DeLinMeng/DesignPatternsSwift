//
//  AppDelegate.swift
//  DesignMode
//
//  Created by 孟德林 on 2021/7/25.
//

import UIKit
import SwiftMonkeyPaws

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var paws: MonkeyPaws?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if CommandLine.arguments.contains("--MonkeyPaws") {
            self.paws = MonkeyPaws(view: window!)
        }
        window = UIWindow.init(frame: UIScreen.main.bounds);
        window?.rootViewController = UINavigationController.init(rootViewController: ViewController.init())
        window?.makeKeyAndVisible()
        return true
    }
    
    
    


}
