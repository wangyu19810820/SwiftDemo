//
//  FunctionTest.swift
//  函数
//
//  Created by wang yu on 2021/9/12.
//

import Foundation

func testConcat(_ v1:String, _ v2:String) -> String {
    return "\(v1) and \(v2)"
}

func testConcat2(v1:String, andValue v2:String, andNum v3:Int) -> String {
    return "\(v1) and \(v2) and \(v3)"
}

func getInfo() -> (String, String, String) {
    return ("千锋", "iOS开发", "Swift视频")
}

func testFunctionInFunction() -> Int {
    var y = 10
    func add() {
//        var y = 1
        y += 5
    }
    add()
    return y
}

func getFuncPointer() -> ((Int) -> Int) {
    func addOne(num : Int) -> Int {
        return num + 1
    }
    return addOne
}

func testFunction() {
    print("开始测试函数")
    
    let v = testConcat("hello", "world")
    print("v is \(v)")
    
    let v2 = testConcat2(v1: "千锋", andValue: "Swift视频", andNum: 100)
    print("v2 is \(v2)")

    let (v3, v4, v5) = getInfo();
    print("v3=\(v3), v4=\(v4), v5=\(v5)")
    
    let v6 = testFunctionInFunction()
    print("v6 is \(v6)")
    
    // 函数作为返回值
    let functionPointer = getFuncPointer()
    let v7 = functionPointer(99)
    print("v7 is \(v7)")
    
    // 函数作为参数
    let arr = [20, 15, 390, 3, 43, 33]
    let v8 = hasAnyMatch(list: arr, condition: lessThanTen)
    print("v8 is \(v8)")
}

func lessThanTen(num:Int) -> Bool {
    return num <= 10
}

func hasAnyMatch(list: [Int], condition:(Int) -> Bool) -> Bool {
    for item in list {
        if (condition(item)) {
            return true
        }
    }
    return false
}
