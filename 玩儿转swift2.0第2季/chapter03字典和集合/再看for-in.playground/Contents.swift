import UIKit

import UIKit

for number in 1..<10 {
    print(number)
}

for c in "Hello" {
    print(c)
}

var vowels = ["a", "e", "i", "o", "u"]
for vowel in vowels {
    print(vowel)
}

for (i, vowel) in vowels.enumerated() {
    print("vowels[\(i)]=\(vowel)")
}

var dict = [1:"A", 2:"B", 3:"C"]
for key in dict.keys {
    print(key)
}

for value in dict.values {
    print(value)
}

for (key, value) in dict {
    print("dict[\(key)]=\(value)")
}

var set = Set(vowels)
for vowel in set {
    print(vowel)
}
