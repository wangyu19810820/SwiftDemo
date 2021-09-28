import UIKit

protocol Record: CustomStringConvertible {
    var wins: Int {get}
    var losses: Int {get}
    
    func winningPercent() -> Double
}

extension Record {
    var description: String {
        return String(format: "WINS: %d , LOSSES: %d", arguments: [wins, losses])
    }
    
    func shoutWins() {
        print("WE WIN", wins, "TIMES!!!")
    }
    
    var gamePlayed: Int {
        return wins + losses
    }
    
    func winningPercent() -> Double {
        return Double(wins) / Double(gamePlayed)
    }
}

protocol Tieable {
    var ties: Int {get set}
}

extension Record where Self: Tieable {
    var gamePlayed: Int {
        return wins + losses + ties
    }
    
    func winningPercent() -> Double {
        return Double(wins) / Double(gamePlayed)
    }
}

protocol Prizable {
    func isPrizable() -> Bool
}

struct BasketballRecord: Record, Prizable {
    var wins: Int
    var losses: Int
    
    func isPrizable() -> Bool {
        return wins > 2
    }
}

struct BaseballRecord: Record, Prizable {
    var wins: Int
    var losses: Int
    let gamePlayed: Int = 162
    
    func isPrizable() -> Bool {
        return gamePlayed > 10 && winningPercent() >= 0.5
    }
}

struct FootballRecord: Record, Tieable, Prizable {
    var wins: Int
    var losses: Int
    var ties: Int
    
    func isPrizable() -> Bool {
        return wins > 1
    }
}

func award(one: Prizable & CustomStringConvertible) {
    if one.isPrizable() {
        print(one)
        print("Congratulation! You won a prize!")
    } else {
        print("You can not have the prize")
    }
}

struct Student: Prizable, CustomStringConvertible {
    var name: String
    var score: Int
    
    var description: String {
        return name
    }
    
    func isPrizable() -> Bool {
        return score >= 60
    }
}

let basketballTeamRecord = BasketballRecord(wins: 2, losses: 10)
let baseballTeamRecord = BaseballRecord(wins: 10, losses: 5)

basketballTeamRecord.gamePlayed
baseballTeamRecord.gamePlayed

let footballTeamRecord = FootballRecord(wins: 1, losses: 1, ties: 1)
footballTeamRecord.gamePlayed
footballTeamRecord.winningPercent()

let wangyu = Student(name: "wangyu", score: 100)

award(one: baseballTeamRecord)
award(one: wangyu)
