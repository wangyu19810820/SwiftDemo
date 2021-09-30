import UIKit

class SmartAirConditioner {
    var temperature: Int = 26
    var temperatureChange: ((Int) -> ())!
    
    init() {
//        temperatureChange = { [unowned self] newTemperature in
//            if abs(newTemperature - self.temperature) >= 10 {
//                print("It's not healty to do it!")
//            } else {
//                self.temperature = newTemperature
//                print("New temperature \(self.temperature) is set!")
//            }
//        }
        temperatureChange = { [weak self] newTemperature in
            if let `self` = self {
                if abs(newTemperature - self.temperature) >= 10 {
                    print("It's not healty to do it!")
                } else {
                    self.temperature = newTemperature
                    print("New temperature \(self.temperature) is set!")
                }
            }
        }
    }
    
    deinit {
        print("Smart Air-conditioner is being deinitialized!")
    }
}

var airCon: SmartAirConditioner? = SmartAirConditioner()
airCon?.temperatureChange(100)
airCon?.temperatureChange(24)
airCon = nil
