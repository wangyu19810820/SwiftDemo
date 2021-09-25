import UIKit

class LightBulb {
    static let maxCurrent = 30
    
    var current = 0 {
//        willSet(newCurrent) {
//            print("Current value changed. The change is \(abs(current - newCurrent))")
//        }
//
//        didSet(oldCurrent) {
//            if current == LightBulb.maxCurrent {
//                print("Pay attention, the current value get to the maximum point.")
//            } else if current > LightBulb.maxCurrent {
//                print("Current too high, falling back to previous setting.")
//                current = oldCurrent
//            }
//            print("The current is \(current)")
//        }
        
        willSet {
            print("Current value changed. The change is \(abs(current - newValue))")
        }
        
        didSet {
            if current == LightBulb.maxCurrent {
                print("Pay attention, the current value get to the maximum point.")
            } else if current > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                current = oldValue
            }
            print("The current is \(current)")
        }
    }
}

let bulb = LightBulb()
bulb.current = 20
bulb.current = 30
bulb.current = 40

enum Theme {
    case DayMode
    case NightMode
}

class UI {
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

let ui = UI(themeMode: .DayMode)
ui.themeMode
ui.fontColor
ui.backgroundColor

ui.themeMode = .NightMode
ui.fontColor
ui.backgroundColor
