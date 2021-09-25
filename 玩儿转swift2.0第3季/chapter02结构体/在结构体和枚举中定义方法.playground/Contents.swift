import UIKit

struct Location {
    let latitude: Double
    let longitude: Double
    
    init?(coordinateString: String) {
        guard let commaIndex = coordinateString.range(of: ",")?.lowerBound,
              let firstElement = Double(coordinateString.substring(to: commaIndex)),
              let secondeElement = Double(coordinateString.substring(from: coordinateString.index(after: commaIndex))) else {
            return nil
        }
        self.latitude = firstElement
        self.longitude = secondeElement
    }
    
    init(latitude:Double, longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func printLocation() {
        print("The Locations is \(self.latitude), \(self.longitude)")
    }
    
    func isNorth() -> Bool {
        return self.latitude > 0
    }
    
    func isSouth() -> Bool {
        return !self.isNorth()
    }
    
    func distanceTo(location: Location) -> Double {
        return sqrt(pow(self.latitude - location.latitude, 2)
                    + pow(self.longitude - location.longitude, 2))
    }
}
let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
appleHeadQuarterLocation.printLocation()
appleHeadQuarterLocation.isNorth()
appleHeadQuarterLocation.isSouth()

let googleHeadQuarterLocation = Location(latitude: 37.4220, longitude: -122.0841)
appleHeadQuarterLocation.distanceTo(location: googleHeadQuarterLocation)

enum Shape {
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point
    
    func area() -> Double {
        switch self {
        case let .Square(side):
            return side * side
        case let .Rectangle(width, height):
            return width * height
        case let .Circle(_, _, r):
            return .pi * r * r
        case .Point:
            return 0
        }
    }
}

let square = Shape.Square(side: 10)
let rectangle = Shape.Rectangle(width: 20, height: 30)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 15)
let point = Shape.Point

square.area()
rectangle.area()
circle.area()
point.area()

