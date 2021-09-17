//
//  main.swift
//  闭包
//
//  Created by wang yu on 2021/9/13.
//

import Foundation

print("Hello, World!")

var arr = [20, 9, 100, 34, 89, 39]

var v1 = hasClosureMatch(arr: arr, value: 40, cb: {
    (num:Int, v:Int) -> Bool in
    return num >= v
})
print("v1 is \(v1)")

var v2 = hasClosureMatch(arr: arr, value: 50, cb: {
    (num:Int, value:Int) -> Bool in
    return num <= value
})
print("v2 is \(v2)")

var v3 = hasClosureMatch(arr: arr, value: 10, cb: {
    return $0 < $1
})
print("v3 is \(v3)")

var v4 = hasClosureMatch(arr: arr, value: 90, cb: {
    return $0 > $1
})
print("v4 is \(v4)")
