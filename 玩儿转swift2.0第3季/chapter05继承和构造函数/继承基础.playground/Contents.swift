import UIKit

class Avatar {
    var name: String
    var life = 100
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

let user1 = User(name: "wangyu")
user1.name
user1.life
user1.isAlive
user1.score

user1.beAttacked(attack: 20)
user1.life

user1.getScore(score: 20)
user1.score

final class Magician : User {
    var magic = 100
}

let magician = Magician(name: "Harry Potter")
magician.name
magician.life
magician.isAlive
magician.score
magician.level
magician.magic
