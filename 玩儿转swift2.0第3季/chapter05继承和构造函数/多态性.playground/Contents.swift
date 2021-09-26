import UIKit

class Avatar {
    var name: String
    var life = 100 {
        didSet {
            if life > 100 {
                life = 100
            }
        }
    }
    var isAlive = true
    
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
    
    func getScore(score: Int) {
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}

final class Magician : User {
    var magic = 100
    
    func heal(user: User) {
        user.life += 10
    }
}

final class Warrior : User {
    var weapon: String?
}

class Monster : Avatar {
    func attack(user: User, amount: Int) {
        user.beAttacked(attack: amount)
    }
}

final class Zombie : Monster {
    var type = "Default"
}

let player1 = Magician(name: "Harry Potter")
let player2 = Warrior(name: "wangyu")
let zombie = Zombie(name: "default zombie1")
let monster = Monster(name: "monster")

func printBasicInfo(avatar: Avatar) {
    print("The avatar's name is \(avatar.name)")
    print("The life is \(avatar.life). He is \(avatar.isAlive ? "still alive" : "dead")")
    print("======")
}

printBasicInfo(avatar: player1)
printBasicInfo(avatar: player2)
printBasicInfo(avatar: zombie)
printBasicInfo(avatar: monster)

let avatarArr: [Avatar] = [player1, player2, zombie, monster]
for avatar in avatarArr {
    avatar.life -= 10
}

player1.heal(user: player2)

player1.life
player1.heal(user: player1)
player1.life
player1.heal(user: player1)
player1.life

