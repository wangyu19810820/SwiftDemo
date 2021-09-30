import UIKit

class Pet {
    var name: String
    init(name: String) {
        self.name = name;
        print("Pet \(name) is initialized")
    }
    
    deinit {
        print("Pet \(name) is deinitialized")
    }
}

class Person {
    var name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
        print("Person \(name) is initialized")
    }
    
    init(name: String, petName: String) {
        self.name = name
        self.pet = Pet(name: petName)
        print("Person \(name) is initialized")
    }
    
    deinit {
        print("Person \(name) is deinitialized")
    }
}

var wangyu1:Person? = Person(name: "wangyu", petName: "aZai")
wangyu1 = nil

print("===================================================")
var wangyu2:Person? = Person(name: "wangyu")
var aZai2:Pet? = Pet(name: "aZai");
wangyu2?.pet = aZai2
wangyu2 = nil
aZai2 = nil

print("===================================================")
var person1: Person? = Person(name: "wangyu")
var person2 = person1
var person3 = person2
person1 = nil
person2 = nil
person3 = nil
