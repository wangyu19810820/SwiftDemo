import UIKit

let arr = [10, 20, 30, 40]
let i = arr.startIndex
let next = arr.index(after: i)
arr.index(before: next)

let str = "Hello, Swift3"
let j = str.startIndex
let k = str.index(j, offsetBy: 5)
str[k]
str.substring(with: j..<k)
