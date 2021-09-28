import UIKit

extension Int {
    var square: Int {
        return self * self
    }
    
    var cube: Int {
        return self * self * self
    }
    
    func inRange(closedLeft left: Int, openedRight: Int) -> Bool {
        return self >= left && self < openedRight
    }
    
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    func stride(to end: Int, by strideValue: Int, task: (Int) -> Void) {
        for i in Swift.stride(from: self, to: end, by: strideValue) {
            task(i)
        }
    }
}

let num = 8
num.square
num.cube

let index = 12
index.inRange(closedLeft: 0, openedRight: 20)

num.repetitions {
    print("Hello")
}

for i in stride(from: 2, to: num, by: 2) {
    print(i)
}

for i in stride(from: 2, through: num, by: 2) {
    print(i)
}

for i in stride(from: 20, through: num, by: -3) {
    print(i)
}

num.stride(to: 2, by: -2) {index in
    print(index.square)
}
