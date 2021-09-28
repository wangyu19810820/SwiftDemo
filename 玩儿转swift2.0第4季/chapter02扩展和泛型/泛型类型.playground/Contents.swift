import UIKit

let arr:[Int] = Array<Int>()
let dict:[String: Int] = Dictionary<String, Int>()
let set:Set<Float> = Set<Float>()

struct Stack<T> {
    var items = [T]()
    
    func isEmpty() -> Bool {
        return items.count == 0
    }
    
    mutating func push(_ item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T? {
        guard !self.isEmpty() else {
            return nil
        }
        return items.removeLast()
    }
}

extension Stack {
    func top() -> T? {
        return items.last
    }
}

struct Pair<T1, T2> {
    var a: T1
    var b: T2
}

var s = Stack<Int>()
s.push(1)
s.push(2)
s.pop()

var ss = Stack<String>()
ss.top()

var pair = Pair<Int, String>(a: 0, b: "Hello")
pair
