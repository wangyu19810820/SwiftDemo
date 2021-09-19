import UIKit

var aWin = 0
var bWin = 0
var game = 0

while aWin < 3 && bWin < 3 {
    game += 1
    let a = arc4random_uniform(6) + 1
    let b = arc4random_uniform(6) + 1
    print("a is \(a), b is \(b).", terminator: "")
    
    if a > b {
        print("A win!")
        bWin = 0
        aWin += 1
    } else if a < b {
        print("B win!")
        aWin = 0
        bWin += 1
    } else {
        print("draw")
        aWin = 0
        bWin = 0
    }
}

let winner = aWin == 3 ? "A" : "B"
print("After \(game) games, \(winner) win!")

var cWin = false
var dWin = false
repeat {
    let a = arc4random_uniform(6) + 1
    let b = arc4random_uniform(6) + 1
    print("c is \(a), d is \(b).", terminator: "")
    
    if a > b {
        cWin = true
    } else if a < b {
        dWin = true
    } else {
        print("draw", terminator:"")
    }
    print("")
} while !cWin && !dWin
let winner1 = cWin ? "C" : "D"
print("\(winner1) win!")

while true {
    let a = arc4random_uniform(6) + 1
    let b = arc4random_uniform(6) + 1
    if a == b {
        print("draw")
        continue
    }
    
    let winner = a > b ? "E" : "F"
    print("\(winner) win!")
    break
}
