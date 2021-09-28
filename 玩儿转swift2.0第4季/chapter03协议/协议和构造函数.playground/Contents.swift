import UIKit

protocol Pet {
    var name: String { get set }
    
    init(name: String)
    
    func playWith()
    func fed()
}

class Animal {
    var type: String = "mammal"
}

final class Dog: Animal, Pet {
    var name: String = "Puppy"
    
    init(name: String) {
        self.name = name
    }
    
    func playWith() {
        print("Wong")
    }
    
    func fed() {
        print("I love bones")
    }
}

class Bird: Animal {
    var name: String = "Little Little Bird"
    
    init(name: String) {
        self.name = name
    }
}

class Parrot: Bird, Pet {
    required override init(name: String) {
        super.init(name: name + " " + name)
    }
    
    func playWith() {
        print("Hello")
    }
    
    func fed() {
        print("Thank you!")
    }
}
