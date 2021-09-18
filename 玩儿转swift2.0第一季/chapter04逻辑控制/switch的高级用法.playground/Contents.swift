import UIKit

let score = 90
switch score {
case 0:
    print("You got an egg!")
case 1..<60:
    print("You failed.")
case 60:
    print("Just passed")
case 61..<80:
    print("Just so-so")
case 80..<90:
    print("Good")
case 90..<100:
    print("Great!")
case 100:
    print("Perfect!")
default:
    print("Error score")
}

let vector = (1, 1)
switch vector {
case (0, 0):
    print("It's origin")
case (1, 0):
    print("It an unit vector on the positive x-axis.")
case (-1, 0):
    print("It an unit vector on the negative x-axis.")
case (0, 1):
    print("It an unit vector on the positive y-axis.")
case (0, -1):
    print("It an unit vector on the negative y-axis.")
default:
    print("It's just an ordinary vector.")
}

let point = (x:1, y:1)
switch point {
case (0, 0):
    print("It's origin")
case (_, 0):
    print("It's on the x-axis.")
case (0, _):
    print("It's on the y-axis.")
default:
    print("It's just an ordinary point")
}

switch point {
case (0, 0):
    print("It's origin")
case (_, 0):
    print("(\(point.0),\(point.1)) is on the x-axis.")
case (0, _):
    print("(\(point.0),\(point.1)) is on the y-axis.")
case (-2...2, -2...2):
    print("(\(point.x),\(point.y)) is near the origin.")
default:
    print("(\(point.x),\(point.y)) is just an ordinary point")
}

let point1:(x:Int, y:Int) = (1, 1)
switch point1 {
case (0, 0):
    print("It's origin")
case (_, 0):
    print("(\(point.x),\(point.y)) is on the x-axis.")
case (0, _):
    print("(\(point.x),\(point.y)) is on the y-axis.")
case (-2...2, -2...2):
    print("(\(point.x),\(point.y)) is near the origin.")
default:
    print("(\(point.x),\(point.y)) is just an ordinary point")
}

let point2 = (8, 0)
switch point2 {
case (0, 0):
    print("It's origin")
case (let x, 0):
    print("It's on the x-axis.")
    print("The x value is \(x)")
case (0, let y):
    print("It's on the y-axis.")
    print("The y value is \(y)")
case (let x, let y):
    print("It's just an ordinary point")
    print("The point is (\(x), \(y))")
}

let point3 = (0, 0)
switch point3 {
case (0, 0):
    print("It's origin")
    fallthrough
case (_, 0):
    print("It's on the x-axis.")
    fallthrough
case (0, _):
    print("It's on the y-axis.")
default:
    print("It's just an ordinary point")
}
