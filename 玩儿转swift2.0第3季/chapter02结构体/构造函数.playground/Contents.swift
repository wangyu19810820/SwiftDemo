import UIKit

struct Location {
    var latitude: Double = 0
    var longitude: Double = 0
}

Location()
Location(latitude: 1)
Location(longitude: 1)
let location = Location(latitude: 37.3230, longitude: -122.0322)

struct Location2 {
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init(coordinateString: String) {
        let commaIndex = coordinateString.range(of: ",")!.lowerBound
        let firstElement = coordinateString.substring(to: commaIndex)
        let secondeElement = coordinateString.substring(from: coordinateString.index(after: commaIndex))
        self.latitude = Double(firstElement)!
        self.longitude = Double(secondeElement)!
    }
    
    init(latitude:Double, longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(latitude:Double, longitude:Double, placeName:String) {
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
}

let location2 = Location2(coordinateString: "37.3230,-122.0322")
let location3 = Location2(latitude: 37.3230, longitude: -122.0322)

let location4 = Location2(latitude: 37.3230, longitude: -122.0322, placeName: "Apple Head Quarter")

let a = Set<Int>([1, 2, 3, 4])
let b = Int()
let c = Int(1.2)
let d = [Int](repeating: 0, count: 3)
