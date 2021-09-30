import UIKit

class Country {
    let name: String
    var capital: City!
    
    init(countryName: String, capitalName: String) {
        self.name = countryName
        self.capital = City(cityName: capitalName, country: self)
        print("Country \(name) is initialized")
    }
    
    deinit {
        print("Country \(name) is deinitialized")
    }
}

class City {
    let name: String
    unowned let country: Country
    
    init(cityName: String, country: Country) {
        self.name = cityName
        self.country = country
        print("City \(name) is initialized")
    }
    
    deinit {
        print("City \(name) is deinitialized")
    }
}

var china: Country? = Country(countryName: "china", capitalName: "beijing")
china = nil
