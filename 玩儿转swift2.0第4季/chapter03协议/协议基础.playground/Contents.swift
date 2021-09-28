import UIKit

protocol Pet : AnyObject {
    
    var name: String {get set}
    var birthPlace: String {get}
    
    func playWith()
    func fed(food: String)
    
    func changeName(newName: String)
}

class Dog: Pet {
//    private var myDoggyName: String
//
//    var name: String {
//        get {
//            return myDoggyName
//        }
//        set {
//            myDoggyName = newValue
//        }
//    }
    var name: String = "Puppy"
    var birthPlace: String = "Beijing"
    
    func playWith() {
        print("Wong!")
    }
    
    func fed(food: String = "Bone") {
        if food == "Bone" {
            print("Happy")
        } else {
            print("I want a bone")
        }
    }
    
    func changeName(newName: String) {
        name = newName
    }
}

var myDog: Dog = Dog()
myDog.birthPlace = "Shanghai"

var aPet: Pet = myDog
//aPet.birthPlace = "Hangzhou"
