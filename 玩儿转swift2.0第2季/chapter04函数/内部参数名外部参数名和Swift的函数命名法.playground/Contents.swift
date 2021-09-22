import UIKit

func sayHelloTo(name:String, withGreetingWord greeting:String) -> String {
    return "\(greeting), \(name)"
}

sayHelloTo(name: "Playground", withGreetingWord: "Hello")

var arr = [1, 2, 3, 4, 5]
arr.insert(0, at: 0)
arr

var str = "Hello, Playground"
//str.replaceSubrange(str.startIndex..<str.startIndex., with: "Hi")

func sayHello(to name:String, withGreetingWord greeting:String) -> String {
    return "\(greeting), \(name)"
}
sayHello(to: "wangyu", withGreetingWord: "Morning")

func mutipleOf(num1: Int, and num2: Int) -> Int {
    return num1 * num2
}
mutipleOf(num1: 4, and: 2)

func mutiple(_ num1:Int, _ num2:Int) -> Int {
    return num1 * num2
}

mutiple(4, 2)

min(4, 2)
