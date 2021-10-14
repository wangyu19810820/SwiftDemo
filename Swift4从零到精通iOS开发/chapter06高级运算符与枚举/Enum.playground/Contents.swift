import UIKit
import CoreFoundation

enum Surname {
    case 张
    case 王
    case 李
    case 赵
}

enum Surname2 {
    case 张, 王, 李, 赵
}

var sur:Surname
sur = Surname.张
sur = .王
switch sur {
case .张:
    print("姓氏张")
case .王:
    print("姓氏王")
case .李:
    print("姓氏李")
case .赵:
    print("姓氏赵")
}

enum CharEnum: Character {
    case a = "a"
    case b = "b"
    case c = "c"
    case d = "d"
}

enum IntEnum: Int {
    case 一 = 1
    case 二
    case 三
    case 四
}

var char = CharEnum.a
var rawValue = char.rawValue
var intEnum = IntEnum(rawValue: 1)
enum Shape {
    case circle(center:(Double, Double), radius: Double)
    case rect(center:(Double, Double), width: Double, height: Double)
    case triangle(point1:(Double, Double), point2:(Double, Double), point3:(Double, Double))
}
var circle = Shape.circle(center: (0, 0), radius: 3)
var rect = Shape.rect(center: (0, 0), width: 10, height: 15)
var triangle = Shape.triangle(point1: (2, 2), point2: (3, 3), point3: (2, 5))

func shapeFunc(param: Shape) {
    switch param {
    case let .circle(center, radius):
        print("此圆的圆心为：\(center)，半径为：\(radius)")
    case let .rect(center, width, height) where width == height:
        print("正方形的中心为：\(center)，宽为：\(width)，高为：\(height)")
    case let .rect(center, width, height) where width != height:
        print("长方形的中心为：\(center)，宽为：\(width)，高为：\(height)")
    case let .triangle(point1, point2, point3):
        print("此三角形的3个顶点分别为：\(point1)，\(point2)，\(point3)")
    default:
        ()
    }
}
shapeFunc(param: circle)
shapeFunc(param: rect)
shapeFunc(param: triangle)

func mathsFunc(param: Int) -> Int {
    let tmp = param - 1
    if tmp > 0 {
        return mathsFunc(param: tmp) * param
    } else {
        return 1
    }
}
mathsFunc(param: 5)

enum Expression {
    case add(param1: Int, param2: Int)
    case sub(param1: Int, param2: Int)
    case mul(param1: Int, param2: Int)
    case div(param1: Int, param2: Int)
}
var exp1 = Expression.add(param1: 5, param2: 5)
var exp2 = Expression.sub(param1: 10, param2: 5)
var exp3 = Expression.mul(param1: 5, param2: 5)
var exp4 = Expression.div(param1: 10, param2: 2)

enum Expression2 {
    case num(param: Int)
    indirect case add(param1: Expression2, param2: Expression2)
    indirect case sub(param1: Expression2, param2: Expression2)
    indirect case mul(param1: Expression2, param2: Expression2)
    indirect case div(param1: Expression2, param2: Expression2)
}
// 单值5
var num5 = Expression2.num(param: 5)
// 5+5
var exp11 = Expression2.add(param1: num5, param2: num5)
// 单值2
var num2 = Expression2.num(param: 2)
// (5+5)*2
var exp22 = Expression2.mul(param1: exp11, param2: num2)
// 单值8
var num8 = Expression2.num(param: 8)
// (5+5)*2-8
var exp33 = Expression2.sub(param1: exp22, param2: num8)
// ((5+5)*2-8)/2
var expFinal = Expression2.div(param1: exp33, param2: num2)

func expressionFunc(param: Expression2) -> Int {
    switch param {
    case let .num(param):
        return param
    case let .add(param1, param2):
        return expressionFunc(param: param1) + expressionFunc(param: param2)
    case let .sub(param1, param2):
        return expressionFunc(param: param1) - expressionFunc(param: param2)
    case let .mul(param1, param2):
        return expressionFunc(param: param1) * expressionFunc(param: param2)
    case let .div(param1, param2):
        return expressionFunc(param: param1) / expressionFunc(param: param2)
    }
}
expressionFunc(param: expFinal)

indirect enum Expression3 {
    case num(param: Int)
    case add(param1: Expression2, param2: Expression2)
    case sub(param1: Expression2, param2: Expression2)
    case mul(param1: Expression2, param2: Expression2)
    case div(param1: Expression2, param2: Expression2)
}
