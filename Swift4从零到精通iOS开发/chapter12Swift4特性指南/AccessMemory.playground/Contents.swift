import UIKit

var stepSize = 1
var stepSize2 = 1
func increment(_ number: inout Int) {
    number += stepSize
}
//increment(&stepSize)

func increment(_ number: inout Int, _ number2: inout Int) {
    var a = number + number2
}
//increment(&stepSize, &stepSize)

struct Player {
    var name: String
    var health: Int
    var energy: Int
    let maxHealth = 10
    mutating func shareHealth(_ player: inout Player) {
        health = player.health
    }
}
var play = Player(name: "jaki", health: 10, energy: 10)
//play.shareHealth(&play)

class Demo {
    var playerInformation = (health: 10, energy: 20)
    
    func balance(_ p1: inout Int, _ p2: inout Int) {
    }
    
    func test() {
        self.balance(&playerInformation.health, &playerInformation.energy)
    }
}
var demo = Demo()
//demo.test()

protocol Container {
    associatedtype Item where Item == Int
    func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}
class MyIntArray: Container {
    typealias Item = Int
    
    func append(_ item: Int) {
        self.innerArray.append(item)
    }
    
    var count: Int {
        return self.innerArray.count
    }
    
    subscript(i: Int) -> Int {
        return self.innerArray[i]
    }
    
    var innerArray = [Int]()
}
var myIntArray = MyIntArray()
myIntArray.append(1)
myIntArray[0]

var multiLineString = """
abcd
jaki
24
"""
print(multiLineString)

let array = ["1", "2", "3"]
for item in array[0...] {
    print(item)
}
