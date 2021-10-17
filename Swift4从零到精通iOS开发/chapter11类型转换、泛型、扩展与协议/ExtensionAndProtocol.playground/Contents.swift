import UIKit

class MyClass {
    var name: String
    var age: Int
    
    init() {
        name = "HS"
        age = 24
    }
}

extension MyClass {
    var nameAndAge: String {
        return "\(name)\(age)"
    }
    
    convenience init(name: String, age: Int) {
        self.init()
        self.name = name
        self.age = age
    }
}

var obj = MyClass()
obj.nameAndAge

var obj2 = MyClass(name: "ZYH", age: 24)

extension MyClass {
    func logName() -> String {
        print(name)
        return name
    }
    
    class func logClassName() {
        print("MyClass")
    }
}
var obj3 = MyClass()
obj3.logName()
MyClass.logClassName()

extension Int {
    mutating func change() {
        self = self * self
    }
}
var count = 3
count.change()
print(count)

protocol MyProtocol {
    func myFunc()
}
extension MyClass: MyProtocol {
    func myFunc() {
        print("myFunc")
    }
}
var cls = MyClass()
cls.myFunc()

protocol ProtocolNew {
    var name: String {get}
    var age: Int {get set}
    var nameAndAge: String {get}
    static var className: String {get}
}
class ClassNew: ProtocolNew {
    var name: String
    var age: Int
    var nameAndAge: String {
        get {
            return name + "\(age)"
        }
    }
    static var className: String {
        get {
            return "MyClass"
        }
    }
    
    init() {
        name = "HS"
        age = 24
    }
}

protocol ProtocolNewTwo {
    func logName()
    static func logClassName()
}
class ClassNewTwo: ProtocolNewTwo {
    var name: String
    var age: Int
    
    init() {
        name = "HS"
        age = 24
    }
    
    func logName() {
        print(name)
    }
    
    static func logClassName() {
        print("ClassNewTwo")
    }
}

protocol MyProtocol2 {
    var name: String {get}
    var age: Int {get set}
    var nameAndAge: String {get}
    static var className: String {get}
    func logName()
    static func logClassName()
}
func test(param: MyProtocol2) {
    param.logName()
}

var array:Array<MyProtocol2>

protocol SubProtocol: ProtocolNewTwo {
}

@objc protocol ClassProtocol: AnyObject {
    @objc optional func log()
}

extension ClassProtocol {
    func log() {
        print("log")
    }
}

class ClassE: ClassProtocol {
}

var clsE = ClassE()
clsE.log()
