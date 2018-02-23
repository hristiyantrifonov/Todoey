//
//  AppDelegate.swift
//  Todoey
//
//  Created by CCM2308 CCM2308 on 15/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do{
            _ = try Realm()
            
        }catch{
            print("Error initialising Realm \(error)")
        }

        
        return true
    }
    
}

