import UIKit

class SmartAirConditioner {
    var temperature: Int = 26
    var temperatureChange: ((Int) -> ())!
    
    init() {
        temperatureChange = { newTemperature in
            if abs(newTemperature - self.temperature) >= 10 {
                print("It's not healty to do it!")
            } else {
                self.temperature = newTemperature
                print("New temperature \(self.temperature) is set!")
            }
        }
    }
    
    deinit {
        print("Smart Air-conditioner is being deinitialized!")
    }
}

var airCon: SmartAirConditioner? = SmartAirConditioner()
airCon!.temperature
airCon?.temperatureChange(100)
airCon?.temperatureChange(24)
airCon?.temperatureChange = { newTemperature in
    if newTemperature >= 10 && newTemperature <= 26 {
        airCon?.temperature = newTemperature
        print("New temperature \(newTemperature) is set!")
    } else {
        print("\(newTemperature) is not a good temperature!")
    }
}
airCon?.temperatureChange(12)
airCon = nil

class ScoreBook {
    var scores: [Int]
    var printTitle: () -> () = {
        print("== SCORE BOOK ==")
    }
    static var changeScore: ((Int) -> Int)?
    
    init(scores: [Int]) {
        self.scores = scores
        print("Scorebook is initialized")
    }
    
    func printScore() {
        scores.map({ score in
            print("==\(score)==")
        })
    }
    
    func changeScores() {
        if let changeScore = ScoreBook.changeScore {
            self.scores = self.scores.map(changeScore)
        }
    }
    
    deinit {
        print("Scorebook is being deinitialized")
    }
}

let scores: [Int] = [99, 85, 67, 13, 94]
var scoreBook: ScoreBook? = ScoreBook(scores: scores)
ScoreBook.changeScore = { (score: Int) in
    return score - 2
}
scoreBook?.changeScores()
scoreBook?.printTitle()
scoreBook?.printScore()
scoreBook = nil
