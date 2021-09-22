import UIKit

func sayHelloTo(_ name:String?) -> String {
    return "Hello " + (name ?? "Guest")
}

sayHelloTo("imooc")

var nickname: String? = nil
sayHelloTo(nickname)

func printHello() -> Void {
    print("Hello")
}

var arr = [1, 2, 3]
arr.append(4)
arr.contains(1)

arr.firstIndex(of: 3)

arr.remove(at: 0)
arr.removeSubrange(0..<2)

var str: NSString = "1234"
//str.trimmingCharacters(in: )
