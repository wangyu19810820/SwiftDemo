import UIKit

func changeScores(scores: inout [Int], by changeScore: (Int) -> Int) {
    for(index, score) in scores.enumerated() {
        scores[index] = changeScore(score)
    }
}

func changeScore1(score: Int) -> Int {
    return Int(sqrt(Double(score)) * 10)
}

func changeScore2(score: Int) -> Int {
    return Int(Double(score) / 150.0 * 100.0)
}

func selectScore(option: Int) -> (Int) -> Int {
    switch option {
    case 1: return changeScore1
    case 2: return changeScore2
    default: return { $0 }
    }
}

// (Int) -> (Int) -> Int
// ((Int) -> Int) -> Int

// (Int, Int) -> Int
// ((Int, Int)) -> Int

class StudentsList {
    var students: [String]
    
    init(students: [String]) {
        self.students = students
    }
    
    func addStudent(name: String, at index: Int) {
        students.insert(name, at: index)
    }
    
    func addStudent(name: String, after student: String) {
        if let index = students.firstIndex(of: student) {
            students.insert(name, at: index + 1)
        }
    }
    
    func addStudent(name: String, before student: String) {
        if let index = students.firstIndex(of: student) {
            students.insert(name, at: index)
        }
    }
}

let list = StudentsList(students: ["A", "B", "C", "D"])
let f = list.addStudent(name:at:)
f("wangyu", 0)
list

let f2 = list.addStudent(name:after:)
let f3 = list.addStudent(name:before:)
