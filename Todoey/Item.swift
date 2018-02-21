//
//  Item.swift
//  Todoey
//
//  Created by CCM2308 CCM2308 on 21/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    
    //Each item has a parent category (and it comes from the property named items
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
