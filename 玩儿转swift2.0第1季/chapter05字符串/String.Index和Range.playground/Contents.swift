import UIKit

var str = "Hello, Swift"
let startIndex:String.Index = str.startIndex
str[startIndex]

//str[startIndex.advanced(5)]

//str[startIndex.successor]
let endIndex = str.endIndex
//str[endIndex.predecessor()]
str.append(contentsOf: "!!!")
str.insert("?", at: str.endIndex)
str.remove(at: str.startIndex)
str
