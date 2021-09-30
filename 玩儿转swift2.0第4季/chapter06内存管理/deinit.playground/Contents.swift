import UIKit

class Person {
    var name: String
    
    init(name: String) {
        print("\(name) is coming")
        self.name = name;
    }
    
    func doSomething() {
        print("\(name), is doing something")
    }
    
    deinit {
        print("\(name) is leaving")
    }
}

func inTheShop() {
    print("======")
    print("Welcome")
    let person = Person(name: "wangyu")
    person.doSomething()
}

func inTheAppleStore() {
    print("======")
    print("Welcome to the Apple Store")
    
    for i in 1...10 {
        print("time:\(i)")
        let person = Person(name: "wangyu")
        person.doSomething()
    }
}

var person: Person? = Person(name: "wangyu")
person = nil
inTheShop()
inTheAppleStore()
