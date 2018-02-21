//
//  AppDelegate.swift
//  Todoey
//
//  Created by CCM2308 CCM2308 on 15/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do{
            let realm = try Realm()
            
        }catch{
            print("Error initialising Realm \(error)")
        }
        
        
        
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        self.saveContext()
    }
    
    // MARK: - Core Data stack
    
    //Lazy means it is declared only when it is needed (i.e. it gets memory benefit as it does not use it until necessary)
    //NSPersistentContainer - SQLite database by default (in this container our data is stored)
    lazy var persistentContainer: NSPersistentContainer = {
        
        //the database - created using our CoreData model
        let container = NSPersistentContainer(name: "DataModel")
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
            
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    //support for saving our data when app terminated
    func saveContext () {
        
        //context is temporary area where changes are stored before "commiting them"
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}

