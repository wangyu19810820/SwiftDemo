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
}

struct BasketballRecord: Record {
    var wins: Int
    var losses: Int
    
    func winningPercent() -> Double {
        return Double(wins) / Double(gamePlayed)
    }
}

struct BaseballRecord: Record {
    var wins: Int
    var losses: Int
    
    func winningPercent() -> Double {
        return Double(wins) / Double(gamePlayed)
    }
}

extension CustomStringConvertible {
    var descriptionWithDate: String {
        return NSDate().description + " " + description
    }
}

let teamRecord = BasketballRecord(wins: 2, losses: 10)
print(teamRecord)
teamRecord.shoutWins()
print(teamRecord.descriptionWithDate)
