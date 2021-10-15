import UIKit

class Math {
    func add(param1: Double, param2: Double) -> Double {
        return param1 + param2
    }
    
    func sqr(param1: Double, param2: Double) -> Double {
        return self.add(param1: param1, param2: param2) * self.add(param1: param1, param2: param2)
    }
}
var obj = Math()
obj.add(param1: 2, param2: 3)
obj.sqr(param1: 3, param2: 3)

struct Point {
    var x: Double
    var y: Double
    mutating func move(x: Double, y: Double) {
        self.x += x
        self.y += y
    }
}
var point = Point(x: 3, y: 3)
point.move(x: 3, y: 3)

struct Point2 {
    var x: Double
    var y: Double
    mutating func move(x: Double, y: Double) {
        self = Point2(x: x + x, y: y + y)
    }
}
var point2 = Point2(x: 3, y: 3)
point2.move(x: 3, y: 3)

struct Point3 {
    var x: Double
    var y: Double
    mutating func move(x: Double, y: Double) {
        self = Point3(x: x + x, y: y + y)
    }
    
    static let name = "Point"
    static func printName() {
        print(self.name)
    }
}
Point3.printName()

class MyClass {
    class func myFunc() {
        print("MyClass")
    }
}
class SubMyClass: MyClass {
    override class func myFunc() {
        print("SubMyClass")
    }
}
SubMyClass.myFunc()

class MyArray {
    var array: Array<Int>
    init(param: Int...) {
        array = param
    }
    
    subscript(index: Int) -> Int {
        set {
            array[index] = newValue
        }
        get {
            return array[index]
        }
    }
}
var myArray = MyArray(param: 1, 2, 3, 4, 5)
myArray[2]
myArray[1] = 0

class MyArray2 {
    var array:Array<Array<Int>>
    init(param:Array<Int>...) {
        array = param
    }
    
    subscript(index1: Int, index2: Int) -> Int {
        get {
            return array[index1][index2]
        }
        set(new) {
            array[index1][index2] = new
        }
    }
}
var myArray2 = MyArray2(param: [1, 2, 3], [3, 4, 5], [4, 5, 6], [6, 7, 8], [7, 8, 9])
myArray2[1, 2]
myArray2[4, 2] = 0
