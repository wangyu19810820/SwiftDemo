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
    
    init(name:String, group:String = "") {
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

final class Magician : User {
    var magic = 100
    override var description: String {
        return "I'm Magician \(name)"
    }
    
    override init(name: String, group: String) {
        let defaultGroups = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"];
        for theGroup in defaultGroups {
            if group == theGroup {
                super.init(name: name, group: group)
                return
            }
        }
        let group = defaultGroups[Int(arc4random() % 4)]
        super.init(name: name, group: group)
    }
    
    func heal(user: User) {
        user.life += 10
    }
}

final class Warrior : User {
    static let weapons = ["Sword", "Axe", "Spear"]
    var weapon: String
    override var description: String {
        return "I'm Warrior \(name)"
    }
    
//    init(name: String, group: String, weapon: String = "Sword") {
//        self.weapon = weapon
//        super.init(name: name, group: group)
//    }
    
    init(name: String, group: String, weapon: String) {
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    
    convenience override init(name: String, group: String) {
        let weapon = Warrior.weapons[Int(arc4random() % 3)]
        self.init(name: name, group: group, weapon: weapon)
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack / 2
    }
}

let player1 = Warrior(name: "wangyu", group: "imooc")
player1.weapon

let player2 = Magician(name: "Harry Potter", group: "imooc")
player2.group

