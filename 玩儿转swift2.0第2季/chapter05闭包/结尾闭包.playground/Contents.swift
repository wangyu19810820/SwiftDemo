import UIKit
import XCPlayground
import PlaygroundSupport

var arr:[Int] = []
for _ in 0..<10 {
    arr.append(Int(arc4random()) % 1000)
}
print(arr)
arr.sort(by: {a, b in return a > b})

arr.sort{a, b in return a > b}
arr.sort(){a, b in
    return a > b
}
print(arr)

let result = arr.map{(number:Int) -> String in
    var number = number
    var res = ""
    repeat {
        res = String(number % 2) + res
        number /= 2
    } while number != 0
    return res
}
print(result)

let showView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = showView.center
rectangle.backgroundColor = UIColor.red
showView.addSubview(rectangle)

UIView.animate(withDuration: 2.0) {
    rectangle.backgroundColor = UIColor.blue
    rectangle.frame = showView.frame
}
PlaygroundPage.current.liveView = showView
