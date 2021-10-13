import UIKit

var array1: [Int]
var array2: Array<Int>
array1 = []
array2 = Array()
array1 = [1, 2, 3]
array2 = Array(arrayLiteral: 1, 2, 3)

var array3 = [String](repeating: "Hello", count: 10)
var array4 = Array(repeating: 1, count: 10)

var array5 = [1, 2, 3] + [4, 5, 6]

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.count
if array.isEmpty {
    print("array为空数组")
}
var a = array[0]
var subArray = array[0...3]
var b = array.first
var c = array.last
array[0] = 0
array[0...3] = [1, 2, 3, 4]
array.append(10)
array.append(contentsOf: [11, 12, 13])
array.insert(0, at: 0)
array.insert(contentsOf: [-2, -1], at: 0)
array.remove(at: 1)
array.removeFirst()
array.removeLast()
array.removeFirst(2)
array.removeLast(2)
array.removeSubrange(0...2)
array.replaceSubrange(0...2, with: [0, 1])
array.removeAll()
if array.contains(1) {
    print(true)
}

let arrayLet = [0, 1, 2, 3, 4]
let arrayLet2 = [(1, 2), (2, 3), (3, 4)]
for item in arrayLet {
    print(item)
}
for item in arrayLet.enumerated() {
    print(item)
}
for index in arrayLet2.indices {
    print(arrayLet2[index], separator: "")
}

var arraySort = [1, 3, 5, 6, 7]
arraySort = arraySort.sorted(by: >)
arraySort = arraySort.sorted(by: <)
arraySort.max()
arraySort.min()

var set1: Set<Int> = [1, 2, 3, 4]
var set2 = Set(arrayLiteral: 1, 2, 3, 4)
set1[set1.startIndex]
set1[set1.index(after: set1.startIndex)]
set1[set1.index(set1.startIndex, offsetBy: 3)]

set1.count
if set1.isEmpty {
    print("集合为空")
}
if set1.contains(1) {
    print("集合包含1")
}
set1.max()
set1.min()

set1.insert(5)
set1.remove(1)
set1.removeFirst()
set1.remove(at: set1.firstIndex(of: 3)!)
set1.removeAll()

var set3: Set<Int> = [1, 2, 3, 4]
var set4 = Set([1, 2, 5, 6])
var setInter = set3.intersection(set4)
var setEx = set3.symmetricDifference(set4)
var setUni = set3.union(set4)
var setSub = set3.subtracting(set4)

var set5: Set = [1, 2]
var set6: Set = [2, 3]
var set7: Set = [1, 2, 3]
var set8: Set = [1, 2, 3]
set5.isSubset(of: set7)
set7.isSuperset(of: set5)
set5.isStrictSubset(of: set7)
set7.isStrictSuperset(of: set8)

for item in set7 {
    print(item)
}

for (index, item) in set7.enumerated() {
    print(index, item)
}

for index in set7.indices {
    print(set7[index])
}

for item in set7.sorted(by: >) {
    print(item)
}

var dic1: [Int: String]
var dic2: Dictionary<Int, String>
dic1 = [1: "1", 2: "2", 3: "3"]
dic2 = Dictionary(dictionaryLiteral: (1, "1"), (2, "2"), (3, "3"))
var dic3 = ["1": "one"]
var dic4: [Int: Int] = [:]
var dic5: Dictionary<Int, Int> = Dictionary()

dic1.count
if dic4.isEmpty {
    print("字典为空")
}

dic1[2]
dic1[1] = "0"
dic1[4] = "4"

dic1.updateValue("1", forKey: 1)
if let oldValue = dic1.updateValue("One", forKey: 1) {
    print("Old Value is \(oldValue)")
}

if let value = dic2[1] {
    print("The Value is \(value)")
}

dic1.removeValue(forKey: 1)
dic1.removeAll()

for item in dic2.keys {
    print(item)
}

for item in dic2.values {
    print(item)
}

for item in dic2 {
    print(item)
}

for (key, value) in dic2 {
    print("\(key):\(value)")
}

