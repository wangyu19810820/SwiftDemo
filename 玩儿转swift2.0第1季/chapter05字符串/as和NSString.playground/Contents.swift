import UIKit

var str = "Hello, swift"

str.uppercased()
str.lowercased()
str.capitalized

str.contains("Hello")
str.hasPrefix("He")
str.hasSuffix("ft")

let s = "one third is \(1.0 / 3.0)"

let s2: String = NSString(format: "one third is %.2f", 1.0 / 3.0) as String

var s3: NSString = "one third is 0.33"
s3.substring(from: 4)
s3.substring(to: 3)
s3.substring(with: NSMakeRange(4, 5))

let s4 = "😀😀😀"
let s5: NSString = "😀😀😀"
s4.count
s5.length

let s6 = "  --- Hello ----    " as NSString
