import UIKit

let point = (3, 3)
switch point {
case let(x, y) where x == y:
    print("It's on the line x == y!")
case let(x, y) where x == -y:
    print("It's on the line x == -y")
case let(x, y):
    print("It's just an ordinary point.")
    print("The point is (\(x), \(y))")
}

let age = 19
switch age {
case 10...19:
    print("You're a teenager.")
default:
    print("You're not a teenager.")
}

if case 10...19 = age {
    print("You're a teenager.")
}

if case 10...19 = age, age >= 18 {
    print("You're a teenager and in a college.")
}

let vector = (4, 0)
if case(let x, 0) = vector, x > 2 && x < 5 {
    print("It's the vector")
}

//for i in 1...100 {
//    if i % 3 == 0 {
//        print(i)
//    }
//}

for case let i in 1...100 where i % 3 == 0 {
    print(i)
}
