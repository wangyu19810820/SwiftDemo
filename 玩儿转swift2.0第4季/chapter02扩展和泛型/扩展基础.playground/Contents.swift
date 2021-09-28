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
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}

extension Rectangle {
    func translate(x: Double, y: Double) {
        self.origin.x += x
        self.origin.y += y
    }
}

let rect = Rectangle(origin: Point(), size: Size(width: 4, height: 3))
rect.translate(x: 10, y: 10)
rect

extension Rectangle {
    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
    
    convenience init(center: Point, size: Size) {
        let originX = center.x - size.width / 2
        let originY = center.y - size.height / 2
        let origin = Point(x: originX, y: originY)
        self.init(origin: origin, size: size)
    }
}

rect.center
