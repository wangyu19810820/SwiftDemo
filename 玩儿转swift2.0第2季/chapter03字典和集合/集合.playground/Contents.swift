import UIKit

var skillsOfA: Set<String> = ["swift", "OC", "OC"]

var emptySet1: Set<Int> = []
var emptySet2 = Set<Double>()

var vowels = Set(["A", "E", "I", "O", "U", "U"])

var skillsOfB: Set = ["HTML", "CSS", "Javascript"]

skillsOfB.count

let set: Set<Int> = [2, 2, 2, 2]
set.count

skillsOfB.isEmpty
emptySet1.isEmpty

let e = skillsOfA.first

skillsOfA.contains("swift")

for skill in skillsOfB {
    print(skill)
}

let setA: Set = [1, 2, 3]
let setB: Set = [3, 2, 1, 3, 2, 1, 1, 1]
setA == setB
