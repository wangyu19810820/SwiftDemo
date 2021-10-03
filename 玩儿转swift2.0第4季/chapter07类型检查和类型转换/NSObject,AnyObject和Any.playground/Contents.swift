import UIKit

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var objects:[Any] = [
    CGFloat(3.1415926),
    "imooc",
    UIColor.blue,
    NSDate(),
    Int(32),
    Array<Int>([1, 2, 3]),
    Person(name: "wangyu"),
]

objects.append({(a: Int) -> Int in a * a})
