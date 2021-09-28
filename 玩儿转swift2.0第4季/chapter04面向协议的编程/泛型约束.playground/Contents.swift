import UIKit

protocol Prizable {
    func isPrizable() -> Bool
}

struct Student: Prizable, CustomStringConvertible, Equatable, Comparable {
    var name: String
    var score: Int
    
    var description: String {
        return name
    }
    
    func isPrizable() -> Bool {
        return score >= 60
    }
}

func == (s1: Student, s2: Student) -> Bool {
    return s1.score == s2.score
}

func < (s1: Student, s2: Student) -> Bool {
    return s1.score < s2.score
}

func topOne<T: Comparable>(seq: [T]) -> T {
    assert(seq.count > 0)
    return seq.reduce(seq[0]){ max($0, $1) }
}

func topPrizableOne<T: Comparable & Prizable>(seq:[T]) -> T? {
    return seq.reduce(nil) {(tempTop: T?, contender: T) in
        guard contender.isPrizable() else {
            return tempTop
        }
        
        guard let tempTop = tempTop else {
            return contender
        }
        
        return max(tempTop, contender)
    }
}

let wangyu = Student(name: "wangyu", score: 100)

let a = Student(name: "Alice", score: 80)
let b = Student(name: "Bob", score: 92)
let c = Student(name: "Karl", score: 85)

let students:[Student] = [a, b, c, wangyu]

topOne(seq: [4, 5, 7, 2])
topOne(seq: ["Hello", "Swift"])
topOne(seq: students)

topPrizableOne(seq: students)?.name
