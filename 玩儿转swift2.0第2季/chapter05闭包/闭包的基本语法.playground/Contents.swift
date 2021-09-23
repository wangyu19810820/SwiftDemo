import UIKit
import os

var arr:[Int] = []
for _ in 0..<100 {
    arr.append(Int(arc4random() % 1000))
}

func biggerNumberFirst(_ a: Int, _ b: Int) -> Bool {
    return a > b
}

arr.sort(by: biggerNumberFirst)
arr.sort(by: {(a:Int, b:Int) -> Bool in
    return a > b
})
arr
