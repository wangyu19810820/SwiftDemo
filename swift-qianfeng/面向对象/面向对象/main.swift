//
//  main.swift
//  面向对象
//
//  Created by wang yu on 2021/9/14.
//

import Foundation

print("Hello, World!")

class Person {
    var age:Int = 0
    var name:String?
    
    init() {
        age = 5
        name = "wangyu"
    }
    
    init(name:String, age:Int) {
        self.age = age
        self.name = name
    }
    
    // 析构函数
    deinit {
        
    }
    
    func getAge() -> Int {
        return age
    }
    
    func getName() -> String {
        return name!
    }
    
    class func MaxAge() -> Int {
        return 200
    }
    
    class func person() -> Person {
        return Person()
    }
}

func testClass() {
    let xiaoming = Person()
    xiaoming.age = 100
    
    print("xiaoming \(xiaoming)")
    print("xiaoming's age \(xiaoming.getAge()) and name is \(xiaoming.name ?? "")")
    
    let maxAge = Person.MaxAge()
    print("max age is \(maxAge)")
    
    let xiaoli = Person.person()
    xiaoli.name = "小李"
    print("xiaoli's name is \(xiaoli.getName())")
    
    let xiaowang = Person(name: "小王", age: 23)
    print("xiaowang is \(xiaowang.name ?? "") age is \(xiaowang.age)")
}

testClass()
