//
//  Data.swift
//  Todoey
//
//  Created by CCM2308 CCM2308 on 21/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    
    //dynamic lets to monitor for change(lets Realm dynamically update changes)
    //That is how properties are declared in Realm
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
