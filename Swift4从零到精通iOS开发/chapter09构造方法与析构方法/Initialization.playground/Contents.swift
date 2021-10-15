import UIKit

class MyClass {
    var count: Int = 0 {
        willSet {
            print("willSet")
        }
    }
    var name: String {
        didSet {
            print("didSet")
        }
    }
    var opt: Int?
    
    init() {
        name = "HS"
    }
}
var myClass = MyClass()

class MyClass2 {
    let name: String = ""
    init() {
//        name = "HS"
    }
}

class MyClassTwo {
    var age = 25
    var name = "HS"
}
var obj = MyClassTwo()
print("age:\(obj.age),name:\(obj.name)")

struct MyStruct {
    var age: Int = 0
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    init() {
        self.init(age: 24, name: "HS")
    }
}
var st = MyStruct(age:24, name: "HS")
var st2 = MyStruct()
print("age:\(st2.age),name:\(st2.name)")

class BaseClass {
    init() {
        print("BaseClass Designated")
    }
    
    convenience init(param: String) {
        print("BaseClass Convenience")
        self.init()
    }
}

class SubClass: BaseClass {
    override init() {
        super.init()
    }
    
    convenience init(param: String) {
        self.init()
    }
    
    convenience init(param: Int) {
        self.init(param: "HS")
    }
}
var obj2 = SubClass()

class BaseCls {
    init() {
        print("BaseCls init")
    }
    
    init(param: Int) {
        print("BaseCls init\(param)")
    }
    
    convenience init(param: String) {
        self.init()
    }
}

// 继承父类所有构造方法
class SubClsOne: BaseCls {
}

// 覆写了无参构造方法，则不再继承父类其他构造方法
class SubClsTwo: BaseCls {
    override init() {
        super.init()
    }
}

// 重载了一个构造方法，则不再继承父类的其他构造方法
class SubClsThree: BaseCls {
    init(param: Bool) {
        super.init()
    }
}

// 覆写了父类所有指定构造方法，会把父类的便利构造方法继承下来
class SubClsFour: BaseCls {
    override init(param: Int) {
        super.init(param: param)
    }
    
    override init() {
        super.init()
    }
}

class Check {
    var property: Int
    init(param: Int) {
        property = param
    }
    
    convenience init(param: String) {
        self.init(param: 0)
    }
    
    func printHello() {
        print("Hello")
    }
}

class SubCheck: Check {
    var subProperty: Int
    var subComputerProperty: Int {
        get {
            return subProperty + 1
        }
        set {
            subProperty = newValue - 1
        }
    }
    
    init() {
        // 必须在调用父类指定构造方法前,完成本身属性的赋值
        self.subProperty = 1
        super.init(param: 0)
        // 子类要重新赋值父类继承下来的属性，必须在调用父类的指定构造方法之后
        super.property = 2
        // 调用了父类的构造方法之后，才能使用self关键字调用本身的方法和计算属性
        self.subComputerProperty
        self.printOK()
    }
    
    convenience init(param: Int, param2: Int) {
        self.init()
        // 便利构造方法中要修改的属性值必须在调用构造方法之后
        self.subProperty = param
        super.property = param2
    }
    
    func printOK() {
        print("OK")
    }
}

class Check2 {
    var property: Int
    
    var name: Int = {
        return 6 + 6
    }()
    
    // 此构造方法必须被子类实现
    required init(param: Int) {
        property = param
    }
    
    init?(param: Bool) {
        guard param else {
            return nil
        }
        property = 1
    }
}
var check = Check2(param: false)

class Temp {
    deinit {
        print("Temp实例被销毁")
    }
}
var temp: Temp? = Temp()
temp = nil
