import UIKit

class Person {
    var firstName: String
    var lastName: String
    var career: String?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    init(firstName: String, lastName: String, career: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}

let person = Person(firstName: "wang", lastName: "yu", career: "Developer")
let person2 = person

person2.firstName = "Steve"
person2.lastName = "Jobs"
person2.career = "CEO"

person2
person
