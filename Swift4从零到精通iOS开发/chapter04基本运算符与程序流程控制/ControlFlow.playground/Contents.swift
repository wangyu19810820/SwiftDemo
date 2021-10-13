import UIKit
import CFNetwork

for index in 1...5 {
    print(index)
}

var sum = 0
for _ in 1...3 {
    sum += 1
}
sum

var collection1: Array = [1, 2, 3, 4]
var collection2: Dictionary = [1:1, 2:2, 3:4, 4:4]
var collection3: Set = [1, 2, 3, 4]
for obj in collection1 {
    print(obj)
}
for (key, value) in collection2 {
    print(key, value)
}
for obj in collection3 {
    print(obj)
}

var i = 0
while i < 10 {
    print("while", i)
    i += 1
}

var j = 0
repeat {
    print("repeat while")
    j += 1
} while j < 10
            
var c = 10
if c < 10 {
    print(c)
}
if c > 10 {
    c -= 10
    print(c)
} else {
    print(c)
}
if c > 0 && c < 10 {
    print(c)
} else if c <= 0 {
    c = -c
    print(c)
} else if c >= 10 && c < 20 {
    c -= 10
    print(c)
} else {
    print("bigger")
}

var charac = "b"
switch charac {
case "a":
    print("chara is a")
case "b":
    print("chara is b")
case "c":
    print("chara is c")
default:
    print("no charac")
}

switch charac {
case "a", "b", "c":
    print("chara is word")
case "1", "2", "3":
    print("chara is num")
default:
    print("no charac")
}

var num = 3
switch num {
case 1...3:
    print("1 <= num <= 3")
case 4:
    print("chara is num")
default:
    print("no charac")
}

var tuple = (0, 0)
switch tuple {
case (0, 1):
    print("Sure")
case (_, 1):
    print("Sim")
case (0...3, 0...3):
    print("SIM")
default:
    print("")
}

switch tuple {
case (let a, 1):
    print(a)
case (let b, 0):
    print(b)
case let(a, b):
    print(a, b)
default:
    print("")
}

switch tuple {
case (let a, 1):
    print(a)
case (let b, 0) where b == 0:
    print(b)
case let(a, b) where a == b:
    print(a, b)
default:
    print("")
}

for index in 0...9 {
    if index == 6 {
        continue
    }
    print("第\(index)次循环")
}

MyLabel: for indexI in 0...2 {
    for indexJ in 0...2 {
        if indexI == 1 {
            continue MyLabel
        }
        print("第\(indexI) \(indexJ)次循环")
    }
}

for index in 0...9 {
    if index == 6 {
        break
    }
    print("第\(index)次循环")
}

MyLabel: for indexI in 0...2 {
    for indexJ in 0...2 {
        if indexI == 1 {
            break MyLabel
        }
        print("第\(indexI) \(indexJ)次循环")
    }
}

switch tuple {
case (0, 0):
    print("Sure")
    fallthrough
case (_, 0):
    print("SiM")
    fallthrough
case (0...3, 0...3):
    print("SIM")
default:
    print("")
}

func myFunc() -> Int {
    return 0
}
func myFunc2() {
    return
}

enum MyError: Error {
    case errorOne
    case errorTwo
}
func newFunc3() throws {
    throw MyError.errorOne
}

func myFuncTwo(param: Int) {
    if param <= 0 {
        return
    }
    print("其他操作")
}
func myFuncTwo2(param: Int) {
    if param > 0 {
        print("其他操作")
    }
}
func myFuncTwo3(param: Int) {
    guard param > 0 else {
        return
    }
    print("其他操作")
}
