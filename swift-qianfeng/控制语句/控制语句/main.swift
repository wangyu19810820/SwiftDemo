//
//  main.swift
//  控制语句
//
//  Created by wang yu on 2021/9/11.
//

import Foundation

print("Hello, World!")

var score = 80

var scoreArr = [90, 100, 23, 43, 43, 67]
var minScore = 0
var maxScore = 0
var avgScore = 0.0
var sumScore = 0.0
var count = scoreArr.count

for s in scoreArr {
    sumScore = sumScore + Double(s)
    print("s is \(s)")
    if (minScore == 0 || minScore > s) {
        minScore = s
    }
    if (maxScore == 0 || maxScore < s) {
        maxScore = s
    }
}

avgScore = sumScore / Double(count)
print("sumScore is \(sumScore), avgScore is \(avgScore)")
print("maxScore is \(maxScore), minScore is \(minScore)")

for i in 0..<count {
    let s = scoreArr[i]
    print("for.. i \(i), s = \(s)")
}

var index = 0
repeat {
    if (index >= count) {
        break
    }
    let s = scoreArr[index]
    print("repeat scoreArr[\(index)]=\(s)")
    index += 1
} while(index < count)

index = 0
while(index < count) {
    let s = scoreArr[index]
    print("while scoreArr[\(index)]=\(s)")
    index += 1
}

let appType = "iOS"
switch appType {
case "iOS":
    print("iOS开发")
    fallthrough
case "Android":
    print("Android开发")
case "WindowsPhone":
    print("windows phone开发")
default:
    print("没有任何匹配")
}
