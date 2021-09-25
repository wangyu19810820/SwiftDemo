import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init?(fullName: String) {
        guard let spaceIndex = fullName.range(of: " ")?.lowerBound else {
            return nil
        }
        self.firstName = fullName.substring(to: spaceIndex)
        self.lastName = fullName.substring(from: fullName.index(after: spaceIndex))
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}

let person1 = Person(firstName: "Alexander", lastName: "Hamilton")
let person2 = Person(fullName: "Steve Jobs")
person1.fullName()
person2?.fullName()
