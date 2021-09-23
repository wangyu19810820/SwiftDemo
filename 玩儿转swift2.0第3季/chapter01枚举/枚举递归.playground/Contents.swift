import UIKit

indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

enum ArithmeticExpression2 {
    case Number(Int)
    indirect case Addition(ArithmeticExpression2, ArithmeticExpression2)
    indirect case Multiplication(ArithmeticExpression2, ArithmeticExpression2)
}

// (5 + 4) * 2
let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let two = ArithmeticExpression.Number(2)
let product = ArithmeticExpression.Multiplication(sum, two)

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left, right):
        return evaluate(expression: left) + evaluate(expression: right)
    case let .Multiplication(left, right):
        return evaluate(expression: left) * evaluate(expression: right)
    }
}
evaluate(expression: product)
