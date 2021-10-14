import UIKit

var a: UInt8 = 0b1000
a = ~a                  // 按位取反
a = 0b11110000 & a      // 按位与
a = 0b11111111 | a      // 按位或
a = 0b11110000 ^ a      // 按位异或
a = a << 1
a = a >> 1

var b: UInt8 = 255
//b = b + 1         // 程序崩溃
b = b &+ 1          // 溢出操作符
b = b &- 1
b = b &* 2

func addFunc(param1: Int, param2: Int) -> Int {
    return param1 + param2
}
func addFunc(param1: Double, param2: Double) -> Double {
    return param1 + param2
}
func addFunc(param1: String, param2: String) -> String {
    return param1 + param2
}

class Circle {
    var center: (Double, Double)
    var radius: Double
    init(center:(Double, Double), radius: Double) {
        self.center = center
        self.radius = radius
    }
}
// 重载运算符+
func +(param1: Circle, param2: Circle) -> Circle {
    return Circle(center: param1.center, radius: param1.radius + param2.radius)
}

// 自定义前缀运算符++
prefix operator ++
prefix func ++(param: Int) -> Int {
    return param + 1
}
++5

// 自定义中缀运算符++
precedencegroup MyPrecedence{         //定义运算符优先级
    associativity: left
    higherThan: AdditionPrecedence
}
infix operator ++:MyPrecedence
func ++(param1: Int, param2: Int) -> Int {
    return param1 * param1 + param2 * param2
}
5 ++ 4

// 自定义后缀运算符++
postfix operator ++
postfix func ++(param1: Int) -> Int {
    return param1 + param1
}
5++
