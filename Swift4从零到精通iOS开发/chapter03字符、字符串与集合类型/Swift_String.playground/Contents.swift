import UIKit

var str: String = "Hello, playground"
str = ""
str = String()
str = String("hello")
str = String(666)
str = String(6.66)
str = String("a")
str = String(false)
str = String(describing: (1,1.0,true))
str = String(format: "我是%@", "珲少")
str = String(describing: Int.self)

var a = Int(1.05)
var b = Float(a)

var c1 = "Hello"
var c2 = "World"
var c3 = c1 + " " + c2

var d = "Hello \(123)"
var d2 = "Hello \(c2)"

MemoryLayout<String>.size
MemoryLayout<Character>.size

var e: Character = "a"
var e2: [Character] = ["H", "E", "L", "L", "O"]
var e3 = String(e2)
var e4 = Character("a")

let name = "China"
for character in name {
    print(character)
}

var e5 = "\0"
e5 = "\\"
print(e5)
e5 = "\t"
e5 = "\n"
e5 = "\'"
e5 = "\""
e5 = "\u{21}"

var obj1 = ""
if obj1.isEmpty {
    print("字符串为空字符串")
}
if obj1.count == 0 {
    print("字符串为空字符串")
}

var com1 = "30a"
var com2 = "31a"
if com1 == com2 {
    print("com1 和 com2 相等")
}
if com1 < com2 {
    print("com1 比 com2 小")
}

var string = "Hello-Swift"
var startIndex = string.startIndex
print(startIndex)
var endIndex = string.endIndex
print(endIndex)

var char = string[string.index(after: startIndex)]
var char2 = string[string.index(before: endIndex)]

var subString = string[startIndex...string.index(startIndex, offsetBy: 4)]
var subString2 = string[string.index(endIndex, offsetBy: -5)..<endIndex]

var range = string.range(of: "Hello")
print(range!)
string.append(Character("!"))
string.append(" Hello-World")
string.insert("~", at: string.index(string.startIndex, offsetBy: 12))
string.insert(contentsOf: ["~", "~", "~"], at: string.index(string.startIndex, offsetBy: 12))
string.replaceSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 4), with: "Hi")
string.remove(at: string.index(before: string.endIndex))
string.removeSubrange(string.startIndex...string.index(string.startIndex, offsetBy: 2))
string.removeAll()

var string2 = "My name is Jaki"
string2 = string2.uppercased()
string2 = string2.lowercased()
string2.hasPrefix("My")
string2.hasSuffix("jaki")
