import UIKit

class Student {
    var name: String
    var age: Int
    let sex: String
    var schoolName = "安阳一中"
    
    init(name: String, age: Int, sex: String) {
        self.name = name
        self.age = age
        self.sex = sex
    }
}

struct Point {
    var x: Double
    var y: Double
}
class PointC {
    var x: Double
    var y: Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
let point = Point(x: 2, y: 1)
//point.x = 3
let point2 = PointC(x: 2, y: 2)
point2.y = 5

class Work {
    var name: String
    init(name: String) {
        self.name = name
        print("完成了Work类实例的构造")
    }
}

class People {
    var age: Int
    lazy var work: Work = Work(name: "teacher")
    init(age: Int) {
        self.age = age
    }
}

var people = People(age: 24)
print("OK")
print(people.work)

class Circle {
    var r: Double
    var center:(Double, Double)
    // 周长
    var l: Double {
        get {
            return 2 * r * Double.pi
        }
        set {
            r = newValue / 2 / Double.pi
        }
    }
    // 面积
    var s: Double {
        get {
            return r * r * Double.pi
        }
        set {
            r = sqrt(newValue / Double.pi)
        }
    }
    
    init(r: Double, center:(Double, Double)) {
        self.r = r
        self.center = center
    }
}
var circle = Circle(r: 3, center: (3, 3))
print("周长是：\(circle.l)，面积是：\(circle.s)")
circle.l = 12 * Double.pi
print(circle.r)
circle.s = 25 * Double.pi
print(circle.r)

class Circle2 {
    var r: Double
    var center: (Double, Double)
    var l: Double {
        get {
            return r * r * Double.pi
        }
        set {
            r = newValue / 2 / Double.pi
        }
    }
    var s: Double {
        get {
            return r * r * Double.pi
        }
        set(myValue) {
            r = sqrt(myValue / Double.pi)
        }
    }
    
    init(r: Double, center:(Double, Double)) {
        self.r = r
        self.center = center
    }
}

class TestClass {
    var test: Int {
        get {
            return 10
        }
    }
}
var test = TestClass()
//test.test = 10

class TestClass2 {
    var test: Int {
        return 10
    }
}
var test2 = TestClass2()
//test2.test = 10

class Teacher {
    var name: String {
        willSet {
            print("将要设置名字为：\(newValue)")
        }
        didSet {
            print("旧的名字为：\(oldValue)")
        }
    }
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
}
var teacher = Teacher(name: "珲少", age: 24)
teacher.name = "Jaki"

class Teacher2 {
    var name: String {
        willSet(new) {
            print("将要设置名字为：\(new)")
        }
        didSet(old) {
            print("旧的名字为：\(old)")
        }
    }
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
}

class SomeClass {
    static var className = "SomeClass"
    static var subName: String {
        return "sub" + className
    }
    class var classSubName: String {
        return "class" + subName
    }
}
SomeClass.className
SomeClass.subName
SomeClass.classSubName
class SubClass: SomeClass {
    override class var classSubName: String {
        return "newName"
    }
}
SubClass.classSubName
