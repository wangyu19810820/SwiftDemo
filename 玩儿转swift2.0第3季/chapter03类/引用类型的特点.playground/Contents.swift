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
    
    func changeCareer(newCareer: String) {
        self.career = newCareer
    }
}

let person = Person(firstName: "Wang", lastName: "Yu", career: "Developer")
//person.career = "Teacher"
//person = Person(firstName: "Steve", lastName: "Jobs", career: "CEO")
person.changeCareer(newCareer: "Teacher")

struct Location {
    var x = 0
    var y = 0
    mutating func goEast() {
        self.x += 1
    }
}
var location = Location()
location.goEast()

enum Switch {
    case On
    case Off
    
    mutating func click() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var button = Switch.Off
button.click()
