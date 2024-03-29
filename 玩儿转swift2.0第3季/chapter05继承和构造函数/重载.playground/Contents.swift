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
    
//    override func getScore(score: Int) {
//        self.score += score
//        if score > level * 100 {
//            level += 1
//        }
//    }
}

final class Warrior : User {
    var weapon: String?
    override var description: String {
        return "I'm Warrior \(name)"
    }
    
    override func beAttacked(attack: Int) {
        self.life -= attack / 2
    }
}

class Monster : Avatar {
    func attack(user: User, amount: Int) {
        user.beAttacked(attack: amount)
    }
    override var description: String {
        return "I'm Monster \(name)"
    }
}

final class Zombie : Monster {
    var type = "Default"
    override var description: String {
        return "I'm Zombie \(name)"
    }
}

let player1 = Magician(name: "Harry Potter")
let player2 = Warrior(name: "wangyu")
let zombie = Zombie(name: "default zombie1")
let monster = Monster(name: "monster")

print(player1.description)
print(player2.description)
print(zombie.description)
print(monster.description)

let avatarArr: [Avatar] = [player1, player2, zombie, monster]
for avatar in avatarArr {
    print(avatar.description)
}

monster.attack(user: player1, amount: 20)
player1.life

monster.attack(user: player2, amount: 20)
player2.life
