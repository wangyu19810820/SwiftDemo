import UIKit

enum Month {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

enum Season {
    case Spring, Summer, Autumn, Winter
}

let curMonth: Month = Month.June
let curMonth2: Month = .June

func season(month:String) -> String {
    switch month {
    case "March", "April", "May":
        return "Spring"
    case "June", "July", "August":
        return "Summer"
    case "September", "October", "November":
        return "Autumn"
    case "December", "January", "February":
        return "Winter"
    default:
        return "Not valid"
    }
}

let month = "June"
season(month: month)

func season2(month:Month) -> String {
    switch month {
    case .March, .April, .May:
        return "Spring"
    case .June, .July, .August:
        return "Summer"
    case .September, .October, .November:
        return "Autumn"
    case .December, .January, .February:
        return "Winter"
    }
}
season2(month: curMonth)

func season3(month:Month) -> Season {
    switch month {
    case .March, .April, .May:
        return .Spring
    case .June, .July, .August:
        return .Summer
    case .September, .October, .November:
        return .Autumn
    case .December, .January, .February:
        return .Winter
    }
}
print(season3(month: curMonth))
