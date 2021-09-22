import UIKit

var dict: Dictionary<String, String> = ["swift":"雨燕；快速", "python":"大蟒"]

var emptyDictionary1:[String:Int] = [:]
var emptyDictionary2:Dictionary<Int, String> = [:]
var emptyDictionary3 = [String:String]()
var emptyDictionary4 = Dictionary<Int, Int>()

print(dict["swift"])

dict["C++"]

if let value = dict["swift"] {
    print("swift 的意思是 - \(value)")
}

dict.count

dict.isEmpty
emptyDictionary1.isEmpty

Array(dict.keys)
Array(dict.values)

for key in dict.keys {
    print(key)
}

for value in dict.values {
    print(value)
}

for (key, value) in dict {
    print("\(key) : \(value)")
}

var dict1 = [1:"A", 2:"B", 3:"C"]
var dict2 = [1:"A", 3:"C", 2:"B"]
dict1 == dict2
