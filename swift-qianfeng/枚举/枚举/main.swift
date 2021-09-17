//
//  main.swift
//  枚举
//
//  Created by wang yu on 2021/9/13.
//

import Foundation

print("Hello, World!")

enum Direction {
    case North
    case South
    case East
    case West
}

enum Direction2 {
    case North, South, West, East
}

var d = Direction.North
var d2 = Direction.West
d2 = .South

var d3 : Direction = .East
var d4 : Direction = Direction.East

switch d4 {
    case .North:
        print("in north")
    case .South:
        print("in south")
    case .East:
        print("in east")
    default:
        print("other")
}

enum Course : Int {
    case Android = 1, iOS, WindowsPhone, Symbian
}

var c : Course = Course.iOS
let v = c.rawValue
print("v is \(v)")

var c2 = Course.init(rawValue: 4)
print("c2 is \(String(describing: c2))")
if (c2 == Course.Symbian) {
    print("is symbian")
}
