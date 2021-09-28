import UIKit

class UI {
    enum Theme {
        case DayMode
        case NightMode
    }

    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: Theme = .DayMode {
        didSet {
            changeTheme(themeMode: themeMode)
        }
    }
    init(themeMode: Theme) {
        self.themeMode = themeMode
        changeTheme(themeMode: themeMode)
    }
    
    func changeTheme(themeMode: Theme) {
        switch(themeMode) {
        case .DayMode:
            fontColor = UIColor.black
            backgroundColor = UIColor.white
        case .NightMode:
            fontColor = UIColor.white
            backgroundColor = UIColor.black
        }
    }
}

let ui = UI(themeMode: UI.Theme.DayMode)
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.fontColor
ui.backgroundColor

let str = "Hello World"
str.startIndex

let index: String.Index = str.startIndex

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
    enum Vertex: Int {
        case LeftTop
        case RightTop
        case RightBottom
        case LeftBottom
    }
    
    func pointAtVertex(v: Vertex) -> Point {
        switch v {
        case .LeftTop:
            return origin
        case .RightTop:
            return Point(x: origin.x + size.width, y: origin.y)
        case .RightBottom:
            return Point(x: origin.x + size.width, y: origin.y + size.height)
        case .LeftBottom:
            return Point(x: origin.x, y: origin.y + size.height)
        }
    }
    
    subscript(index: Int) -> Point {
        assert(index >= 0 && index < 4, "Index in Rectangle Out of Range")
        return pointAtVertex(v: Vertex(rawValue: index)!)
    }
}

let rect = Rectangle(origin: Point(), size: Size(width: 4, height: 3))
rect.pointAtVertex(v: .RightBottom)
rect[2]
