import UIKit

class Person {
    var name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
        print("Person \(name) is initialized")
    }
    
    deinit {
        print("Person \(name) is deinitialized")
    }
}

class Apartment {
    let name: String
    weak var tenant: Person?
    
    init(name: String) {
        self.name = name
        print("Apartment \(name) is initialized")
    }
    
    deinit {
        print("Apartment \(name) is deinitialized")
    }
}

var wangyu: Person? = Person(name: "wangyu")
var imoocApartment: Apartment? = Apartment(name: "imooc Apartment")

wangyu?.apartment = imoocApartment
imoocApartment?.tenant = wangyu

wangyu = nil
imoocApartment?.tenant
imoocApartment = nil
