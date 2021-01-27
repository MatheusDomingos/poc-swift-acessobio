//
//  AppDelegate.swift
//  PocAcessoBioSwift
//
//  Created by Matheus Domingos on 26/05/20.
//  Copyright © 2020 Acesso Digital. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let tView = TestAcessoBioVew()
        let nav = UINavigationController(rootViewController: tView)
        nav.setNavigationBarHidden(true, animated: false)
        nav.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.window!.rootViewController = nav
        self.window!.makeKeyAndVisible()
        
        return true
    }



}

