import Foundation

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
    // TODO: offer a all parameeters initializer
    
    // MARK: - Methods
    func beAttacked(attack: Int) {
        life -= attack
        if life <= 0 {
            isAlive = false
        }
        // FIXME: Support Swift
    }
}
