import UIKit

class Avatar {
    var name: String
    var life = 100 {
        didSet {
            if self.life <= 0 {
                self.isAlive = false
            }
            if life > 100 {
                life = 100
            }
        }
    }
    var isAlive = true
    var description: String {
        return "I'm Avatar \(name)"
    }
    
    init(name: String) {
        self.name = name
    }
    
    convenience init(firstName: String, lastName: String) {
        self.init(name: firstName + " " + lastName)
    }
    
    func beAttacked(attack: Int) {
        life -= attack
        if life <= 0 {
            isAlive = false
        }
    }
}

class User : Avatar {
    var score = 0
    var level = 0
    override var description: String {
        return "I'm User \(name)"
    }
    var group: String
    
    init(name:String, group:String) {
        self.group = group
        super.init(name: name)
        
        if group == "" {
            self.getScore(score: -10)
        }
    }
    
    convenience init(group: String) {
        let name = User.generateUserName()
        self.init(name: name, group: group)
    }
    
    override convenience init(name: String) {
        self.init(name: name, group: "")
    }
    
    static func generateUserName() -> String {
        return "Player" + String(arc4random() % 1_000_000)
    }
    
    final func getScore(score: Int) {
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}

class Monster: Avatar {
    convenience init(type: String) {
        self.init(name: type)
    }
}

let user = User(firstName: "John", lastName: "Snow")
let monster = Monster(name: "zombie")
