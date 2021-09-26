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
    
    func heal(user: User) {
        user.life += 10
    }
}

final class Warrior : User {
    var weapon: String
    override var description: String {
        return "I'm Warrior \(name)"
    }
    
    init(name: String, group: String, weapon: String) {
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack / 2
    }
}

let user = User(name: "wangyu", group: "imooc")
user

let player1 = Magician(name: "Harry Potter", group: "imooc")
