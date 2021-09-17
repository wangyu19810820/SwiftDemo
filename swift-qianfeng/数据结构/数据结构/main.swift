//
//  main.swift
//  数据结构
//
//  Created by wang yu on 2021/9/12.
//

import Foundation

print("Hello, World!")

let p1 = 100
let p2 = "value is " + String(p1)
print("p2 is \(p2)")

var p3 = ["iOS", "Android", "Windows Phone", "Symbian"]
print("p3 is \(p3)")

for i in p3 {
    print("i is \(i)")
}

p3[0] = "iOS/Swift"
for i in p3 {
    print("new i is \(i)")
}

p3.append("BlackBerry")
for i in p3 {
    print("new i2 is \(i)")
}

var p4 : Dictionary = [
    "Name" : "wangyu",
    "Age" : "40",
    "Score" : "100"
]

for (key, value) in p4 {
    print("key value \(key) = \(value)")
}

p4["Course"] = "iOS"
for (key, value) in p4 {
    print("key value2 \(key) = \(value)")
}

let p5 = p4.keys
for key in p5 {
    let v = p4[key]
    print("key value3 \(key) = \(v ?? "")")
}

let numbers = [
    "iOS" : [1, 3, 5, 43, 43],
    "Android" : [100, 32, 23, 33],
    "Windows Phone" : [23, 43, 23, 45]
]

var sum : Int = 0

for (_, value) in numbers {
    for i in value {
        sum += i
    }
}
print("sum is \(sum)")
