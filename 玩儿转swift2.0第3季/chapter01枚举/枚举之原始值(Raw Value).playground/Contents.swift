import UIKit

enum Month: Int {
    case January = 1
    case February = 2
    case March = 3
    case April = 4
    case May = 5
    case June = 6
    case July = 7
    case August = 8
    case September = 9
    case October = 10
    case November = 11
    case December = 12
}

enum Month2: Int {
    case January = 1, February = 2, March = 3, April = 4, May = 5, June = 6, July = 7,
         August = 8, September = 9, October = 10, November = 11, December = 12
}

enum Month3: Int {
    case January = 1, February, March, April, May, June, July,
         August, September, October, November, December
}

func monthsBeforNewYear(month:Month) -> Int {
    return 12 - month.rawValue
}

func monthsBeforNewYear2(month:Month2) -> Int {
    return 12 - month.rawValue
}

func monthsBeforNewYear3(month:Month3) -> Int {
    return 12 - month.rawValue
}

let input = 4
if let month = Month(rawValue: input) {
    monthsBeforNewYear(month: month)
}

let input2 = 4
if let month = Month3(rawValue: input2) {
    monthsBeforNewYear3(month: month)
}

enum Grade: Int {
    case F, E, D, C, B, A
}

enum Grade2: Int {
    case F = 0, E, D, C, B, A
}

let grade: Grade = .A
print("Your score is \(grade.rawValue)")
let grade2: Grade2 = .A
print("Your score is \(grade2.rawValue)")

enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}
let coin: Coin = .Quarter
print("It's \(coin.rawValue) cents")

enum ProgrammingLanguage: String {
    case Swift
    case ObjectiveC = "Objective-C"
    case C
    case Java
}
let myFavoriteLanguage: ProgrammingLanguage = .ObjectiveC
print("\(myFavoriteLanguage.rawValue) is my favorite language.")

let myFavoriteLanguage2: ProgrammingLanguage = .Swift
print("\(myFavoriteLanguage2.rawValue) is my favorite language.")
