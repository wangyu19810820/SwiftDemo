import UIKit

func add(_ a:Int, _ b:Int) -> Int {
    return a + b
}

let anotherAdd:(Int, Int) -> Int = add
print(anotherAdd(3, 4))

func sayHelloTo(name:String) {
    print("Hello, \(name)")
}
let anotherSayHelloTo: (String) -> () = sayHelloTo
let anotherSayHelloTo2: (String) -> Void = sayHelloTo

func sayHello() {
    print("Hello")
}

let anotherSayHello1: ()->() = sayHello
let anotherSayHello2: ()->Void = sayHello
//let anotherSayHello3: Void->() = sayHello
//let anotherSayHello4: Void->Void = sayHello

var arr:[Int] = []
for _ in 0..<100 {
    arr.append(Int(arc4random() % 1000))
}
arr

arr.sort()

func biggerNumberFirst(_ a:Int, _ b:Int) -> Bool {
    return a > b
}

arr.sort(by: biggerNumberFirst)
arr

func cmpByNumberString(_ a: Int, _ b: Int) -> Bool {
    return String(a) < String(b)
}
arr.sort(by: cmpByNumberString)

func near500(_ a:Int, _ b:Int) -> Bool {
    return abs(a - 500) < abs(b - 500)
}

arr.sorted(by: near500)
