//
//  Student+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by wang yu on 2021/10/11.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var age: Int32
    @NSManaged public var name: String?

}

extension Student : Identifiable {

}
