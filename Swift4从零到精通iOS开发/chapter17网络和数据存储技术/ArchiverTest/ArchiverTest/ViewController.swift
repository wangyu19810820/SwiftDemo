//
//  ViewController.swift
//  ArchiverTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDicPath = NSHomeDirectory()
        let filePath = homeDicPath + "/archiver.file"
//        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
//        let filePath = path! + "/archiver.file"
        
        // 对单一对象进行归档
//        NSKeyedArchiver.archiveRootObject("jaki", toFile: filePath)
//        let name = NSKeyedUnarchiver.unarchiveObject(withFile: filePath)
//        print(name ?? "name是nil")

        // 对多个对象进行归档
//        let mutableData = NSMutableData()
//        let archiver = NSKeyedArchiver(forWritingWith: mutableData)
//        archiver.encode(24, forKey: "age")
//        archiver.encode("jaki", forKey: "name")
//        archiver.finishEncoding()
//        mutableData.write(toFile: filePath, atomically: true)
        
//        let data = try? Data(contentsOf: URL(fileURLWithPath: filePath))
//        let unArchiver = NSKeyedUnarchiver(forReadingWith: data!)
//        let age = unArchiver.decodeInt32(forKey: "age")
//        let name = unArchiver.decodeObject(forKey: "name")
//        print("\(name ?? "name is nil"),\(age)")
        
        // 对自定义对象进行归档
        let people = People()
        people.name = "jaki"
        people.age = 24
        NSKeyedArchiver.archiveRootObject(people, toFile: filePath)
        let getPeople = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as! People
        print("\(getPeople.name ?? "name是nil"),\(getPeople.age)")
    }


}

