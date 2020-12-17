//
//  AppDelegate.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            let photoSearchController = PhotoSearchController()
            window.rootViewController = UINavigationController(rootViewController: photoSearchController)
            window.makeKeyAndVisible()
        }
        customizeNavigationBar()
        
        return true
    }
    
    private func customizeNavigationBar() {
        guard let navController = window?.rootViewController as? UINavigationController else { return }
        navController.navigationBar.backgroundColor = .white
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.isTranslucent = false
        navController.navigationBar.barStyle = .default
        navController.navigationBar.tintColor = .darkGray
        navController.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
    }

}
