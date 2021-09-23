import UIKit

func changeScores1(scores:inout [Int]) {
    for (index, score) in scores.enumerated() {
        scores[index] = Int(sqrt(Double(score)) * 10)
    }
}

func changeScores2(scores:inout [Int]) {
    for (index, score) in scores.enumerated() {
        scores[index] = Int(Double(score) / 150.0 * 100.0)
    }
}

var scores1 = [36, 61, 78, 89, 99]
changeScores1(scores: &scores1)

var scores2 = [88, 101, 124, 137, 150]
changeScores2(scores: &scores2)

func changeScores(_ scores:inout [Int], by changeScore:(Int)->Int) {
    for (index, score) in scores.enumerated() {
        scores[index] = changeScore(score)
    }
}

func changeScore1(score:Int) -> Int {
    return Int(sqrt(Double(score)) * 10)
}

func changeScore2(score:Int) -> Int {
    return Int(Double(score) / 150.0 * 100)
}

var scores3 = [36, 61, 78, 89, 99]
changeScores(&scores3, by: changeScore1)

var scores4 = [88, 101, 124, 137, 150]
changeScores(&scores4, by: changeScore2)

func changeScore3(score:Int) -> Int {
    return score + 3
}
var scores5 = [59, 61, 76, 83, 95]
changeScores(&scores5, by: changeScore3)

var scores6 = [65, 91, 45, 97, 87, 72, 33]
scores6.map(changeScore1)
scores6

func isPassOrFail(score: Int) -> String {
    return score >= 60 ? "Pass" : "Fail"
}
scores6.map(isPassOrFail)

func fail(score: Int) -> Bool {
    return score < 60
}
scores6.filter(fail)

func add(_ num1:Int, _ num2:Int) -> Int {
    return num1 + num2
}
scores6.reduce(0, add)
scores6.reduce(0, +)

func concatenate(str: String, num: Int) -> String {
    return str + String(num) + " "
}
scores6.reduce("", concatenate)
