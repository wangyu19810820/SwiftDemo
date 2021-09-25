import Foundation

enum Theme {
    case DayMode
    case NightMode
}

class UI {
    private var fontColor: String!
    private var backgroundColor: String!
    internal var themeMode: Theme = .DayMode {
        didSet {
            changeTheme(themeMode: themeMode)
        }
    }
    
    init() {
        self.themeMode = .DayMode
        changeTheme(themeMode: self.themeMode)
    }
    
    init(themeMode: Theme) {
        self.themeMode = themeMode
        changeTheme(themeMode: themeMode)
    }
    
    private func changeTheme(themeMode: Theme) {
        switch(themeMode) {
        case .DayMode:
            fontColor = "UIColor.black"
            backgroundColor = "UIColor.white"
        case .NightMode:
            fontColor = "UIColor.white"
            backgroundColor = "UIColor.black"
        }
    }
    
    func show() {
        print("The font color is \(fontColor ?? "")")
        print("The background color is \(backgroundColor ?? "")")
    }
}
