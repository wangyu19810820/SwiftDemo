//
//  main.swift
//  结构体
//
//  Created by wang yu on 2021/9/14.
//

import Foundation

print("Hello, World!")

struct QFTest {
    var x = 0
    var y = 0
    
    init() {
        NSLog("in init")
    }
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
        NSLog("in init(x: y:)")
    }
    
    init(_ x:Int, _ y:Int) {
        self.x = x
        self.y = y
    }
    
    func getCenter() -> Int {
        return (x + y) / 2
    }
    
    mutating func addOffset(deltaX:Int, deltaY:Int) {
        x += deltaX
        y += deltaY
    }
}

func testStructure() {
    let s = QFTest(x: 100, y: 200)
    print("s.x = \(s.x), s.y = \(s.y)")
    
    var s2 = QFTest()
    s2.x = 111
    s2.y = 222
    print("s2.x = \(s2.x), s2.y = \(s2.y)")
    
    var s3 = QFTest(333, 444)
    print("s3.x = \(s3.x), s3.y = \(s3.y)")
    s3.x = 600
    
    let c = s3.getCenter()
    print("c is \(c)")
    
    s3.addOffset(deltaX: 100, deltaY: 200)
    print("s3.x = \(s3.x), s3.y = \(s3.y)")
}

testStructure()
