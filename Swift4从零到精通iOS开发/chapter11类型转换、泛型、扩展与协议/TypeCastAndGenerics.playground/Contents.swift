import UIKit

var str = "HS"
if str is String {
    print("str的类型是String")
}

class BaseClass {
}
class MyClass: BaseClass {
    var name: String?
}
var cls1 = BaseClass()
var cls2 = MyClass()
if cls1 is MyClass {
    print("cls1的类型是MyClass")
}
if cls2 is BaseClass {
    print("cls2的类型是BaseClass")
}

class MySubClassOne: MyClass {
    var count: Int?
}
class MySubClassTwo: MyClass {
    var isBiger: Bool?
}
var obj1 = MyClass()
obj1.name = "HS"
var obj2 = MySubClassOne()
obj2.count = 100
var obj3 = MySubClassTwo()
obj3.isBiger = true
var array:[MyClass] = [obj1, obj2, obj3]
for i in 0..<array.count {
    var obj = array[i]
    if obj is MySubClassOne {
        print((obj as! MySubClassOne).count!)
        continue
    }
    if obj is MySubClassTwo {
        print((obj as! MySubClassTwo).isBiger!)
        continue
    }
    if obj is MyClass {
        print(obj.name!)
    }
}

class MyClassOne {
}
class MyClassTwo {
}
class MyClassThree {
}
var clsOne = MyClassOne()
var clsTwo = MyClassTwo()
var clsThree = MyClassThree()
var clsArray: Array<AnyObject> = [clsOne, clsTwo, clsThree]
for obj in clsArray {
    if obj is MyClassOne {
        print("MyClassOne")
    } else if obj is MyClassTwo {
        print("MyClassTwo")
    } else if obj is MyClassThree {
        print("MyClassThree")
    }
}

var anyArray: Array<Any> = [clsOne, clsTwo, clsThree, 100, "HS", false, (1, 1),
                            {() -> () in print("Closures")}]

func exchange<T>(param1: inout T, param2: inout T) {
    let tmp = param1
    param1 = param2
    param2 = tmp
}

var p1 = "15"
var p2 = "40"
exchange(param1: &p1, param2: &p2)
print(p1, p2)

struct Stack<ItemType> {
    var items:[ItemType] = []
    mutating func push(param: ItemType) {
        self.items.append(param)
    }
    mutating func pop() -> ItemType {
        return self.items.removeLast()
    }
}
var obj7 = Stack<Int>()
obj7.push(param: 1)
obj7.pop()
var obj8 = Stack<String>()
obj8.push(param: "HS")
obj8.pop()

extension Stack {
    func getArray() -> [ItemType] {
        return items
    }
}

struct Stack2<ItemType: MyClass> {
    var items:[ItemType] = []
    mutating func push(param: ItemType) {
        self.items.append(param)
    }
    mutating func pop() -> ItemType {
        return self.items.removeLast()
    }
}

protocol MyProtocol {
}

struct Stack3<ItemType: MyProtocol> {
    var items:[ItemType] = []
    mutating func push(param: ItemType) {
        self.items.append(param)
    }
    mutating func pop() -> ItemType {
        return self.items.removeLast()
    }
}

protocol MyProtocol2 {
    associatedtype ItemType
    var param: ItemType {get set}
    func printParam(param: ItemType) -> Void
}

class MyClassP: MyProtocol2 {
    var param: Int {
        get {
            return 0
        }
        set {
        }
    }
    
    func printParam(param: Int) {
        print(param)
    }
}

class MyClassTC<T, C> where T: MyClassP, C:MyClassP {
    var param1: T
    var param2: C
    init(param1: T, param2: C) {
        self.param1 = param1
        self.param2 = param2
    }
}
var obj9 = MyClassTC(param1: MyClassP(), param2: MyClassP())
