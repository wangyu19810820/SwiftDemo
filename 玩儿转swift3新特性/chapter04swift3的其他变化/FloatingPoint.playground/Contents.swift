import UIKit

func hypotenuse<T: FloatingPoint>(_ a: T, _ b: T) -> T {
    return (a * a + b * b).squareRoot()
}

let aFloat: Float = 3.0
let bFloat: Float = 4.0
hypotenuse(aFloat, bFloat)

let aCGFloat: CGFloat = 3.0
let bCGFloat: CGFloat = 4.0
hypotenuse(aCGFloat, bCGFloat)

let aDouble: Double = 3.0
let bDouble: Double = 4.0
hypotenuse(aDouble, bDouble)

let alpha: Float = 2.0
alpha * Float.pi
alpha * .pi

let beta: CGFloat = 3.0
beta * CGFloat.pi
beta * .pi

func findMin<T: FloatingPoint>(values: [T]) -> T {
    var res = T.infinity
    for v in values {
        res = v < res ? v : res
    }
    return res
}

let myNan = Double.nan
let myNan2 = CGFloat.nan

myNan > 0
myNan <= 0

func divide<T: FloatingPoint>(_ a: T, _ b: T) -> T {
    if b.isZero {
        return T.nan
    }
    return a / b
}
divide(10, 0).isNaN

let temperatureData = ["21.5", "19.25", "27", "no data", "28.25", "no data", "23"]
let tempsCelsius = temperatureData.map { Double($0) ?? .nan}
for t in tempsCelsius {
    print(t)
}
print("---------------------")
let tempsFahrenheit = tempsCelsius.map{ $0 * 1.8 + 32 }
for t in tempsFahrenheit {
    print(t)
}

let badAverage = tempsFahrenheit.reduce(0.0, +) / Double(tempsFahrenheit.count)

let validTemps = tempsFahrenheit.filter{ !$0.isNaN }
print("---------------------")
for t in validTemps {
    print(t)
}
let average = validTemps.reduce(0.0, +) / Double(validTemps.count)

let u = 2.5
let v = 1.2
//u % v
