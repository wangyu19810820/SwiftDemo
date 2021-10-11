//
//  ViewController.swift
//  CoreDataTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let modelUrl = Bundle.main.url(forResource: "CoreDataTest", withExtension: "momd")
        let modelManager = NSManagedObjectModel(contentsOf: modelUrl!)
        let store = NSPersistentStoreCoordinator(managedObjectModel: modelManager!)
        let path = URL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/SchoolSQL.sqlite")
        print(path)
        
        try! store.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: path, options: nil)
        let context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        context.persistentStoreCoordinator = store
        
        let schoolClass: SchoolClass = NSEntityDescription.insertNewObject(forEntityName: "SchoolClass", into: context) as! SchoolClass
        schoolClass.name = "三年二班"
        schoolClass.studentCount = 60
        
        let student:Student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context) as! Student
        student.name = "Jaki"
        student.age = 24
        schoolClass.monitor = student
        
        if ((try? context.save()) != nil) {
            print("新增数据成功")
        }
        
        let request = NSFetchRequest<SchoolClass>(entityName: "SchoolClass")
        request.predicate = NSPredicate(format: "studentCount==60")
        let result:NSAsynchronousFetchResult<SchoolClass> = try! context.execute(request) as! NSAsynchronousFetchResult<SchoolClass>
        print(result.finalResult?.first?.name ?? "")
    }


}

