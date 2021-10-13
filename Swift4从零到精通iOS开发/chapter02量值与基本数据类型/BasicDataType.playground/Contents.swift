import UIKit

var a1 = UInt8.max
var a2 = UInt16.max
var a3 = UInt32.max
var a4 = UInt64.max
var a5 = MemoryLayout<UInt>.size

var maxInt8 = Int8.max
var minInt8 = Int8.min
var maxInt16 = Int16.max
var minInt16 = Int16.min
var maxInt32 = Int32.max
var minInt32 = Int32.min
var maxInt64 = Int64.max
var minInt64 = Int64.min
var intSize = MemoryLayout<Int>.size

var b = MemoryLayout<Float>.size
var b1 = MemoryLayout<Float32>.size
var b2 = MemoryLayout<Float64>.size
//var b3 = MemoryLayout<Float80>.size
var c = MemoryLayout<Double>.size

var sum = 1.25e3
var sum2 = 0x1p3

var num1 = 001.23
var num2 = 1_000
var num3 = 1_000.1_001

var bool1 = true
var bool2 = false

var pen:(name: String, price: Int) = ("钢笔", 2)
var name = pen.name
var price = pen.price

var car:(String, Int) = ("奔驰", 2000000)
var carName = car.0
var carPrice = car.1

var(theName, thePrice) = car
print(theName, thePrice)

var(theName2, _) = car
print(theName2)

var obj:String? = "HS"
obj!

if obj != nil {
    obj!
}

if let tmp = obj {
    print(tmp)
} else {
    obj = "HS"
    print(obj!)
}

var obj1: Int? = 1
var obj2: Int? = 2
if let tmp1 = obj1, let tmp2 = obj2 {
    print(tmp1, tmp2)
}

if let tmp1 = obj1, let tmp2 = obj2, tmp1 < tmp2 {
    print(tmp1, tmp2)
}

typealias Price = Int
var penPrice: Price = 100
