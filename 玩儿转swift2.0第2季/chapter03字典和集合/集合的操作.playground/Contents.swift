import UIKit

var skillOfA: Set<String> = ["swift", "OC"]
var skillOfB: Set<String> = ["HTML", "CSS", "Javascript"]
var skillOfC: Set<String> = []

skillOfC.insert("swift")
skillOfC.insert("HTML")
skillOfC.insert("CSS")

skillOfC.insert("CSS")

skillOfC.remove("CSS")
skillOfC
skillOfC.remove("Javascript")
skillOfC

if let skill = skillOfC.remove("HTML") {
    print("\(skill) is removed.")
}

skillOfC.removeAll()

skillOfA = ["swift", "OC"]
skillOfB = ["HTML", "CSS", "Javascript"]
skillOfC = ["swift", "HTML", "CSS"]

skillOfA.union(skillOfC)
skillOfA
//skillOfA.formUnion(skillOfC)
//skillOfA

skillOfA.intersection(skillOfC)
skillOfA

//skillOfA.subtract(skillOfC)
//skillOfA

skillOfA.union(["java", "android"])
skillOfA

var skillOfD: Set = ["swift"]

skillOfD.isSubset(of: skillOfA)
skillOfD.isStrictSubset(of: skillOfA)

skillOfA.isSuperset(of: skillOfD)
skillOfA.isStrictSuperset(of: skillOfD)

skillOfA.isDisjoint(with: skillOfB)
skillOfA.isDisjoint(with: skillOfC)
