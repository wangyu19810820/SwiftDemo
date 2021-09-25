import UIKit

class Person {
    let firstName: String
    let lastName: String
    var career: String?
    
    init(firstName: String, lastName: String, career: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}

let person1 = Person(firstName: "Steve", lastName: "Jobs", career: "CEO")
let person2 = person1

person1 === person2

let person3 = Person(firstName: "Steve", lastName: "Jobs", career: "CEO")
person1 === person3
person1 !== person3
