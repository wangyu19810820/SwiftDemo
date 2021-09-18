import UIKit

let imFloat: Float = 3.1415926
let imDouble: Double = 3.1415926

var a = 1.25e10
var b = 1.25e-2

var c = 1_000_000.000_000_1


let x: UInt16 = 100
let y: UInt8 = 20
let m = x + UInt16(y)
let n = UInt8(x) + y

let a1:Double = 3.0
let b1:Float = 0.3
a1 + Double(b1)
Float(a1) + b1

let w:Float = 3
let v:Int = Int(3.2)

let integer = 3
let fraction = 0.1415926
let pi = Double(integer) + fraction

let red:CGFloat = 0.2
let green:CGFloat = 0.5
let blue:CGFloat = 0.3
UIColor(red: red, green: green, blue: blue, alpha: 1.0)
