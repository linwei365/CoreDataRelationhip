//
//  Dish+CoreDataProperties.swift
//  CoreDataRelationship
//
//  Created by Lin Wei on 2/26/16.
//  Copyright © 2016 Lin Wei. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Dish {

    @NSManaged var dishName: String?
    
    @NSManaged var diningTable: NSSet?

}
