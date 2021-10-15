import UIKit

func Test() {
    var a = 10
    while a > 0 {
        a -= 1
        var b = 2
    }
    if a < 0 {
        var c = 3
    }
}
class TestClass {
    var name: String = "HS"
}
var obj: TestClass? = TestClass()
obj = nil
var cls1: TestClass? = TestClass()
var cls2 = cls1
var cls3 = cls2
cls2 = nil
cls1 = nil
cls3 = nil

class ClassOne {
    weak var cls: ClassTwo?
    deinit {
        print("ClassOne deinit")
    }
}
class ClassTwo {
    var cls: ClassOne?
    init(cls: ClassOne?) {
        self.cls = cls
    }
    deinit {
        print("ClassTwo deinit")
    }
}
var obj1:ClassOne? = ClassOne()
var obj2:ClassTwo? = ClassTwo(cls: obj1)
obj1?.cls = obj2
obj1 = nil
obj2 = nil

class ClassThree {
    unowned var cls: ClassFour
    init(cls: ClassFour) {
        self.cls = cls
    }
    deinit {
        print("ClassThree deinit")
    }
}
class ClassFour {
    var cls: ClassThree?
    deinit {
        print("ClassFour deinit")
    }
}
var obj4: ClassFour? = ClassFour()
var obj3: ClassThree? = ClassThree(cls: obj4!)
obj4!.cls = obj3
obj3 = nil
obj4 = nil

class ClassFive {
    unowned var cls: ClassSix
    init(cls: ClassSix) {
        self.cls = cls
    }
    deinit {
        print("ClassFive deinit")
    }
}
class ClassSix {
    var cls: ClassFive!
    init() {
        cls = ClassFive(cls: self)
    }
    deinit {
        print("ClassSix deinit")
    }
}
var obj5: ClassSix? = ClassSix()
obj5 = nil

class MyClassSix {
    var name: String = "HS"
    lazy var closure: () -> Void = {
        [unowned self] () -> Void in
        print(self.name)
    }
    deinit {
        print("MyClass deinit")
    }
}
var obj6: MyClassSix? = MyClassSix()
obj6?.closure
obj6 = nil
