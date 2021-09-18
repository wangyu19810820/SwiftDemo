import UIKit

var str = "Hello, playground"
let str2 = String("Hello swift")

var emptyString = ""
var emptyString2 = String()

str.isEmpty
emptyString.isEmpty

let mark = "!!!"
str + mark
str
str += mark
str

//str2 += mark

let name = "wangyu"
let age = 18
let height = 1.6
let s = "My name is \(name). I'm \(age) years old. I'm \(height) meters tall."
print(s)

let s2 = "\\\"hello\"\t\"hi\"\nbye!"
print(s2)
