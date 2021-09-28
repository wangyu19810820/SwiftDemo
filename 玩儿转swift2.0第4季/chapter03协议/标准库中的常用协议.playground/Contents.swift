import UIKit

struct Record: Equatable, Comparable, CustomStringConvertible {
    var wins: Int
    var losses: Int
    
    var description: String {
        return "WINS: \(wins), LOSSES: \(losses)"
    }
    
}

func == (left: Record, right: Record) -> Bool {
    return left.wins == right.wins && left.losses == right.losses
}

func < (left: Record, right:Record) -> Bool {
    if left.wins != right.wins {
        return left.wins < right.wins
    } else {
        return left.losses > right.losses
    }
}

let recordA = Record(wins: 10, losses: 5)
let recordB = Record(wins: 10, losses: 5)

recordA != recordB
recordA > recordB
recordA >= recordB

var team1Record = Record(wins: 10, losses: 3)
var team2Record = Record(wins: 8, losses: 5)
var team3Record = Record(wins: 8, losses: 8)
var records = [team1Record, team2Record, team3Record]

records.sort()

print(recordA)
