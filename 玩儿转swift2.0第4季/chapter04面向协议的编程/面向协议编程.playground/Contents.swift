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

struct BasketballRecord: Record {
    var wins: Int
    var losses: Int
}

struct BaseballRecord: Record {
    var wins: Int
    var losses: Int
    let gamePlayed: Int = 162
}

struct FootballRecord: Record, Tieable {
    var wins: Int
    var losses: Int
    var ties: Int
}

let basketballTeamRecord = BasketballRecord(wins: 2, losses: 10)
let baseballTeamRecord = BaseballRecord(wins: 10, losses: 5)

basketballTeamRecord.gamePlayed
baseballTeamRecord.gamePlayed

let footballTeamRecord = FootballRecord(wins: 1, losses: 1, ties: 1)
footballTeamRecord.gamePlayed
footballTeamRecord.winningPercent()
