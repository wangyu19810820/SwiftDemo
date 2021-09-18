import UIKit

let rating = "a"
if rating == "A" {
    print("Great!")
} else if rating == "B" {
    print("Just so-so")
} else if rating == "C" {
    print("It's Bad")
} else {
    print("Error")
}

switch rating {
case "A", "a":
    print("Great!")
case "B", "b":
    print("Just so-so")
case "C", "c":
    print("It's Bad")
default:
    ()
}

let x = 2.8
switch x {
case 2.8:
    print("I'm 2.8")
default:
    print("I'm not 2.8")
}

let y = true
switch y {
case true:
    print("I'm true")
case false:
    print("I'm false")
}
