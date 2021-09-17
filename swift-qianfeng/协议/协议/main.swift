//
//  main.swift
//  协议
//
//  Created by wang yu on 2021/9/16.
//

import Foundation

print("Hello, World!")

@objc protocol SortProtocol : NSObjectProtocol {
    func compare(value:Int) -> Bool
    
    @objc optional func beginCompare() -> Bool
}

protocol SortProtocol2 {
    func sort2() -> Int
}
protocol SortProtocol3 {
    
}

class ClassA : NSObject, SortProtocol, SortProtocol2, SortProtocol3 {
    var age = 0
    init(age:Int) {
        self.age = age
    }
    
    func compare(value: Int) -> Bool {
        return age > value
    }
    
    func beginCompare() -> Bool {
        return true
    }
    
    func sort2() -> Int {
        return age + 100
    }
}

let classA = ClassA(age: 100)
let ret = classA.compare(value: 50)
print("ret is \(ret)")

// 强制转换类型
let p1 = classA as SortProtocol
print("p1 is \(p1.compare(value: 200))")
print("p1 is \(p1.beginCompare?() ?? false)")

let p2 = classA as SortProtocol2
print("p2 is \(p2.sort2())")
