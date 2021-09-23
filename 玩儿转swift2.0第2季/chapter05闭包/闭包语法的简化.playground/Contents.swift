import UIKit

var arr:[Int] = []
for _ in 0..<100 {
    arr.append(Int(arc4random() % 1000))
}

arr.sort(by: {(a:Int, b:Int) -> Bool in
    return a > b
})

arr.sort(by: {(a:Int, b:Int) -> Bool in return a > b})

arr.sort(by: {a, b in return a > b})

arr.sorted(by: {a, b in a > b})

arr.sorted(by: {$0 > $1})

arr.sorted(by: >)
