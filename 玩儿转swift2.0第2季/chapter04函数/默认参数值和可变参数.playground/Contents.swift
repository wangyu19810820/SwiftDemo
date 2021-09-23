 import UIKit

func sayHelloTo(name:String, withGreetingWord greeting:String = "Hello", punctuation:String = "!") -> String {
    return "\(greeting), \(name)\(punctuation)"
}

sayHelloTo(name: "imooc", punctuation: "!!!")
sayHelloTo(name: "Playground", withGreetingWord: "Hi")
sayHelloTo(name: "wangyu")
sayHelloTo(name: "Playground", withGreetingWord: "Hi", punctuation: "!!!")

func sayHello(to name: String = "Playground", withGreetingWord greeting: String = "Hello", punctuation: String      = "!") -> String {
    return "\(greeting), \(name)\(punctuation)"
}

sayHello()
sayHello(to: "OC", withGreetingWord: "Bye", punctuation: "!!!")

print("Hello", 1, 2, 3, 4, "hi", separator: ",", terminator: ".\n")

func mean(_ numbers: Double...) -> Double {
    var sum: Double = 0
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}

mean(2)
mean(2, 3)
mean(3, 5, 6, 77, 99, 90)

func sayHelloTo2(names:String..., withGreetingWord greeting:String, punctuation:String) {
    for name in names {
        print("\(greeting), \(name)\(punctuation)")
    }
}
sayHelloTo2(names:"A", "B", "C", withGreetingWord: "Hi", punctuation: "!!!")
