import UIKit

class Person {
    var name: String
    var creditCard: CreditCard?
    
    init(name: String) {
        self.name = name
        print("Person \(name) is initialized")
    }
    
    deinit {
        print("Person \(name) is deinitialized")
    }
}

class CreditCard {
    let number: String
    unowned let customer: Person
    
    init(number: String, customer: Person) {
        self.number = number
        self.customer = customer
        print("Credit Card \(number) is initialized")
    }
    
    deinit {
        print("Credit Card \(number) is deinitialized")
    }
}

var wangyu: Person? = Person(name: "wangyu")
var goldenCard: CreditCard? = CreditCard(number: "12345678", customer: wangyu!)

wangyu?.creditCard = goldenCard

goldenCard = nil
wangyu = nil
