import UIKit

struct Point {
    var x = 0
    var y = 0
}

var p1 = Point()
var p2 = p1

p2.x += 1
print(p1)
print(p2)

//Array
//Dictionary
//Set
//String

var arr1 = [1, 2]
var arr2 = arr1
arr1.append(3)
print(arr1)
print(arr2)

var dict1 = ["A":1, "B":2]
var dict2 = dict1
dict1["C"] = 3
print(dict1, dict2)

var set1 = Set([1, 2])
var set2 = set1
set2.insert(3)
print(set1, set2)

enum Direction {
    case North
    case South
    case East
    case West
}

var d1 = Direction.North
var d2 = d1

d2 = Direction.South
print(d1, d2)

enum Shape {
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
}

var square1 = Shape.Square(side: 2.0)
var square2 = square1
square2 = Shape.Square(side: 5.0)
print(square1, square2)
