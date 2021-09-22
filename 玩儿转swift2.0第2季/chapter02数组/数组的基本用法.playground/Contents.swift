import UIKit

var numbers = [1, 2, 3, 4, 5]
let vowels = ["A", "E", "I", "O", "U"]
var emptyArray = [Int]()

vowels.count

numbers.isEmpty
emptyArray.isEmpty

vowels[0]
//vowels[5]

vowels.first
vowels.last
emptyArray.first

if let firstVowel = vowels.first {
    print("The first vowel is " + firstVowel)
}

vowels.first!

vowels[vowels.count - 1]

numbers.min()
vowels.max()

numbers[2..<4]
numbers[2..<numbers.count]

vowels.contains("A")
vowels.contains("B")

for index in 0..<numbers.count {
    numbers[index]
}

for numer in numbers {
    print(numer)
}

for (i, vowel) in vowels.enumerated() {
    print("\(i+1):\(vowel)")
}

var oneToFive = [1, 2, 4, 3, 5]
numbers == oneToFive

