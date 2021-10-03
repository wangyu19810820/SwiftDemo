import UIKit

let score1 = (chinese:90, math:95)
let score2 = (chinese:90, math:100)
let score3 = (chinese:100, math:90)

func < (t1:(Int, Int), t2:(Int, Int)) -> Bool {
    return t1.1 == t2.1 ? t1.0 < t2.0 : t1.1 < t2.1
}

score1 < score2
score3 < score2

func printScore(chinese: Int, math: Int) {
    print("chinese score:\(chinese), math score:\(math)")
}
//printScore(score1)
printScore(chinese: score1.chinese, math: score1.math)
