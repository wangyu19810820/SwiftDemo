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
    
    required init(name: String) {
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
    
    required convenience init(name: String) {
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

class NPC: Avatar {
    let career: String
    
    init(name:String, career:String) {
        self.career = career
        super.init(name: name)
    }
    
    convenience required init(name: String) {
        self.init(name: name, career: "")
    }
}

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            self.origin.x = newCenter.x - size.width / 2
            self.origin.y = newCenter.y - size.height / 2
        }
    }
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - size.width / 2
        let originY = center.y - size.height / 2
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
    
    var area: Double {
        return size.width * size.height
    }
}
