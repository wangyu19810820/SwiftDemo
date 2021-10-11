//
//  People.swift
//  ArchiverTest
//
//  Created by wang yu on 2021/10/11.
//

import UIKit

class People: NSObject, NSCoding {

    var name: String?
    var age: Int = 0
    
    override init() {
        super.init()
    }
    
    required init?(coder: NSCoder) {
        super.init()
        self.name = coder.decodeObject(forKey: "name") as! String?
        self.age = coder.decodeInteger(forKey: "age")
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(age, forKey: "age")
        coder.encode(name, forKey: "name")
    }
}
