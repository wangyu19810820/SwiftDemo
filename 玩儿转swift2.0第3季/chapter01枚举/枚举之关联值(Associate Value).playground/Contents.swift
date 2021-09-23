import UIKit

enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

enum ATMStatus {
    case Success(Int)
    case Error(String)
    case Waiting
}

var balance = 1000

func withdraw(amount:Int) -> ATMStatus {
    if balance >= amount {
        balance -= amount
        return .Success(balance)
    } else {
        return .Error("Not enough money")
    }
}

let result = withdraw(amount: 100)
switch result {
case let .Success(newBalance):
    print("\(newBalance) yuan left in your account.")
case let .Error(errorMessage):
    print("Error: \(errorMessage)")
case .Waiting:
    print("Waiting")
}

switch result {
case .Success:
    print("Success")
case .Error:
    print("Error")
case .Waiting:
    print("Waiting")
}

enum Shape {
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point
}

let square = Shape.Square(side: 10)
let rectangle = Shape.Rectangle(width: 20, height: 30)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 15)
let point = Shape.Point

func area(shape: Shape) -> Double {
    switch shape {
    case let .Square(side):
        return side * side
    case let .Rectangle(width, height):
        return width * height
    case let .Circle(_, _, r):
        return Double.pi * r * r
    case .Point:
        return 0
    }
}
area(shape: square)
area(shape: rectangle)
area(shape: circle)
area(shape: point)
