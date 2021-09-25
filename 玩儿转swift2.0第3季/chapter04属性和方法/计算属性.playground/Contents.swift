import UIKit

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

class Rectangle {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
//        set(newCenter) {
//            origin.x = newCenter.x - size.width / 2
//            origin.y = newCenter.y - size.height / 2
//        }
        set {
            origin.x = newValue.x - size.width / 2
            origin.y = newValue.y - size.height / 2
        }
    }
    
    var area: Double {
        return size.width * size.height
    }
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}

var rect = Rectangle(origin: Point(), size: Size(width: 10, height: 5))
rect.center
rect.origin = Point(x: 10, y: 10)
rect.center
rect.center = Point(x: 20, y: 20)
rect.area

var rect2 = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 10, height: 5))
rect2.origin
rect2.size
