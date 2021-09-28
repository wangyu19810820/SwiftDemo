import UIKit

protocol TurnBasedGame {
    var turn: Int{get set}
    func play()
}

@objc protocol TurnBasedGameDelegate {
    func gameStart()
    func playerMove()
    func gameEnd()
    func gameOver() -> Bool
    
    @objc optional func turnStart()
    @objc optional func turnEnd()
}

class SinglePlayerTurnBasedGame: NSObject, TurnBasedGame {
    var turn: Int = 0
    var delegate: TurnBasedGameDelegate!
    
    func play() {
        delegate.gameStart()
        while !delegate.gameOver() {
            if let turnStart = delegate.turnStart {
                turnStart()
            } else {
                print("ROUND",turn,":")
            }
            delegate.playerMove()
            delegate.turnEnd?()
            turn += 1
        }
        delegate.gameEnd()
    }
}

class RockPaperScissors: SinglePlayerTurnBasedGame, TurnBasedGameDelegate {
    enum Shape: Int {
        case Rock
        case Scissors
        case Paper
        
        func beat(shape: Shape) -> Bool {
            return (self.rawValue + 1) % 3 == shape.rawValue
        }
    }
    
    var wins = 0
    var otherWins = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    static func go() -> Shape {
        return Shape(rawValue: Int(arc4random()) % 3)!
    }
    
    func show(hand: Shape) -> String {
        switch hand {
        case .Paper:
            return "Paper"
        case .Rock:
            return "Rock"
        case .Scissors:
            return "Scissors"
        }
    }
    
    func gameStart() {
        wins = 0
        otherWins = 0
        print("=== Rock Paper Scissor ===")
    }
    
    func gameOver() -> Bool {
        return wins >= 2 || otherWins >= 2
    }
    
    func gameEnd() {
        if wins >= 2 {
            print("You win!")
        } else {
            assert(otherWins >= 2, "game end with wins < 2 && otherWins < 2")
            print("You lose!")
        }
    }
    
    func playerMove() {
        let yourShape = RockPaperScissors.go()
        let otherShape = RockPaperScissors.go()
        print("Your:", show(hand: yourShape))
        print("Other:", show(hand: otherShape))
        
        if yourShape.beat(shape: otherShape) {
            print("You win this round")
            wins += 1
        } else if otherShape.beat(shape: yourShape) {
            print("You lose this round")
            otherWins += 1
        } else if yourShape == otherShape {
            print("Tie in this round")
        } else {
            assertionFailure("Impossible Shapes")
        }
    }
    
    func turnStart() {
        print("== ROUND START ==")
    }
    
    func turnEnd() {
        print("=================")
    }
}

let rockPaperScissors = RockPaperScissors()
rockPaperScissors.play()

assert(1 > 0)
assert(1 > 0, "Error")
//assertionFailure("Error")

precondition(1 > 0)
precondition(1 > 0, "Error")
//fatalError("Error")
