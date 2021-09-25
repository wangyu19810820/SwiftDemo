import UIKit

class ClosedRange {
    let start: Int
    let end: Int
    
    var width: Int {
        return end - start + 1
    }
    
    lazy var sum:Int = {
        print("start computing sum value")
        var res = 0
        for i in start ... end {
            res += i
        }
        return res
    }()
    
    init?(start: Int, end: Int) {
        guard end >= start else {
            return nil
        }
        self.start = start
        self.end = end
    }
}

if let range = ClosedRange(start: 0, end: 10_000) {
    range.width
    print(range.sum)
    print(range.sum)
    print(range.sum)
}

class Location {
    let latitude: Double
    let longitude: Double
    
    lazy var address: String? = {
        return nil
    }()
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

class Book {
    let name: String
    lazy var content: String? = {
        return nil
    }()
    
    init(name: String) {
        self.name = name
    }
}

class Web {
    let url: String
    lazy var html = {() -> String? in
        return nil
    }()
    
    init(url: String) {
        self.url = url
    }
}
