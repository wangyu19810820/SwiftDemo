import UIKit

func welcome(to name: String, message: String) -> String {
    return message + " " + name
}

welcome(to: "wangyu", message: "hello")

func gcd(_ a: Int, _ b: Int) -> Int {
    return 0
}
gcd(4, 12)

func add(_ a: Int, and b: Int) -> Int {
    a + b
}
add(1, and: 2)

func toBinary(num: Int) -> String {
    var num = num
    var res = ""
    repeat {
        res = String(num % 2) + res
        num /= 2
    } while num != 0
    return res
}

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    (a, b) = (b, a)
}
var a = 3
var b = 4
swapTwoInts(&a, &b)
a
b

func welcome(title: String = "Welcome",
             message: String = "Hello",
             name: String = "Guest") -> String {
    return title + "! " + message + " " + name + "!"
}
welcome()
welcome(title: "Hello")
welcome(title: "Hello", message: "Good morning", name: "wangyu")
welcome(title: "Good moring", name: "wangyu")
welcome(name: "imooc")
