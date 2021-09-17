//
//  main.swift
//  Getter与Setter
//
//  Created by wang yu on 2021/9/16.
//

import Foundation

print("Hello, World!")

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    
    var center : Point {
        get {
            let x = origin.x + size.width / 2
            let y = origin.y + size.height / 2
            return Point(x: x, y: y)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
    
    func getCenter() -> (Double, Double) {
        let x = origin.x + size.width / 2
        let y = origin.y + size.height / 2
        return (x, y)
    }
}

var rect = Rect(origin: Point(x: 100, y: 200), size: Size(width: 400, height: 44))
var (x, y) = rect.getCenter()
print("x y = (\(x), \(y))")
var p2 = rect.center
print("x2 y2 = (\(p2.x), \(p2.y)")

var p3 = Point(x: 300, y: 400)
rect.center = p3
print("x y = (\(rect.origin.x), \(rect.origin.y))")
