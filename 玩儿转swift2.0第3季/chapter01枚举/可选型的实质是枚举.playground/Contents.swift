import UIKit

var age: Int? = 17
print(age)

age = nil

var website: Optional<String> = Optional.some("imooc.com")
website = .none

switch website {
case .none:
    print("No website")
case let .some(website):
    print("The website is \(website)")
}

if let website = website {
    print("The website is \(website)")
} else {
    print("No website")
}
