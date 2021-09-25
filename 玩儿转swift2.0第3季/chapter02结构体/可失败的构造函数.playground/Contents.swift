import UIKit

struct Location {
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init?(coordinateString: String) {
        if let commaIndex = coordinateString.range(of: ",")?.lowerBound {
            if let firstElement = Double(coordinateString.substring(to: commaIndex)),
               let secondeElement = Double(coordinateString.substring(from: coordinateString.index(after: commaIndex))) {
                self.latitude = firstElement
                self.longitude = secondeElement
            } else {
                return nil
            }
        } else {
            return nil
        }
    }
}

let location = Location(coordinateString: "37.3230&-122.0322")
let location2 = Location(coordinateString: "37.3230,-122.0322")
struct Location2 {
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    init?(coordinateString: String) {
        guard let commaIndex = coordinateString.range(of: ",")?.lowerBound,
              let firstElement = Double(coordinateString.substring(to: commaIndex)),
              let secondeElement = Double(coordinateString.substring(from: coordinateString.index(after: commaIndex))) else {
            return nil
        }
        self.latitude = firstElement
        self.longitude = secondeElement
    }
}
let location3 = Location2(coordinateString: "37.3230&-122.0322")
let location4 = Location2(coordinateString: "37.3230,-122.0322")
