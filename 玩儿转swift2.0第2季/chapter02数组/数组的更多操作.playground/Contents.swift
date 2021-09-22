import UIKit

var courses = ["玩儿转Swift", "玩儿转Swift2(第一季)", "玩儿转Swift2(第二季)"]

courses.append("玩儿转Swift2(第三季)")
print(courses)

courses += ["玩儿转Swift2(第四季)"]
courses = courses + ["玩儿转Swift面向协议编程", "玩儿转Swift面向函数编程"]
print(courses)

courses.insert("玩儿转Swift设计模式", at: 5)

courses.removeLast()
print(courses)

courses.removeFirst()
print(courses)

courses.remove(at: 4)
print(courses)

//courses.removeSubrange(0..<4)
//print(courses)
//
//courses.removeAll()
//print(courses)

courses[0] = "玩儿转Swift3(第一季)"
print(courses)

courses[1...3] = ["玩儿转Swift3(第二季)", "玩儿转Swift3(第三季)", "玩儿转Swift3(第四季)"]
print(courses)

courses[0..<4] = ["玩儿转Swift3"]
print(courses)
