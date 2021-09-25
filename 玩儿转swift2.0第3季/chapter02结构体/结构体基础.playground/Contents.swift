import UIKit

struct Location {
    var latitude: Double
    var longitude: Double
}

var appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
let googleHeadQuarterLocation = Location(latitude: 37.4220, longitude: -122.0841)

appleHeadQuarterLocation.latitude
googleHeadQuarterLocation.longitude

appleHeadQuarterLocation.latitude = 0
appleHeadQuarterLocation = googleHeadQuarterLocation

struct Place {
    let location: Location
    var name: String
}
var googleHeadQuarter = Place(location: googleHeadQuarterLocation, name: "Google")
//googleHeadQuarter.location.latitude = 0
