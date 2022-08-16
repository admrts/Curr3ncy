//
//  AppDelegate.swift
//  Curr3ncy
//
//  Created by Ali Demirtaş on 15.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
      //  window?.rootViewController = WelcomeViewController()
        window?.makeKeyAndVisible()
        let navViewController = UINavigationController(rootViewController: WelcomeViewController())
        window?.rootViewController = navViewController
        window?.backgroundColor = .systemBackground
        
       return true
    }


}

