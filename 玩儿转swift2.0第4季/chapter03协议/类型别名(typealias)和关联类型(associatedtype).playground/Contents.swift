import UIKit

typealias Length = Double

extension Double {
    var km: Length { return self * 1000.0 }
    var m: Length { return self }
    var cm: Length { return self / 100.0 }
    var ft: Length { return self / 3.28084 }
}

let runningDistance: Length = 3.54.km
runningDistance

typealias AudioSample = UInt64

protocol WeightCalculable {
    associatedtype WeightType
    var weight: WeightType { get }
}

class iPhone7: WeightCalculable {
    typealias WeightType = Double
    var weight: WeightType {
        return 0.114
    }
}

class Ship: WeightCalculable {
    typealias WeightType = Int
    
    var weight: WeightType
    
    init(weight: WeightType) {
        self.weight = weight
    }
}

extension Int {
    typealias Weight = Int
    var t: Weight { return 1_000 * self }
}

var titanic = Ship(weight: 46_328.t)
