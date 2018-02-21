//
//  Category.swift
//  Todoey
//
//  Created by CCM2308 CCM2308 on 21/02/2018.
//  Copyright © 2018 Hristiyan Trifonov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @objc dynamic var name: String = ""
    let items = List<Item>() //each category has a list of items
}
