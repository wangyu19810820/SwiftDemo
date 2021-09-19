import UIKit

var str = "Hello, playground"

for c in str {
    print(c)
}

let mark: Character = "!"
str + String(mark)
str
str.append(mark)
str

let englishLetter: Character = "a"
let chineseLetter: Character = "慕"
let dog: Character = "🐶"
let coolGuy: Character = "\u{1F60E}"

var coolLetters = "abc"
coolLetters.count

var chineseLetters = "慕课网"
chineseLetters.count

var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"
coolGuys.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe.count
cafe2.count

cafe == cafe2
