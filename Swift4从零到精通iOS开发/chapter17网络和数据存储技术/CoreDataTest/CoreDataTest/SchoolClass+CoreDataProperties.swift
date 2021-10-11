//
//  SchoolClass+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by wang yu on 2021/10/11.
//
//

import Foundation
import CoreData


extension SchoolClass {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SchoolClass> {
        return NSFetchRequest<SchoolClass>(entityName: "SchoolClass")
    }

    @NSManaged public var name: String?
    @NSManaged public var studentCount: Int32
    @NSManaged public var monitor: Student?

}

extension SchoolClass : Identifiable {

}
