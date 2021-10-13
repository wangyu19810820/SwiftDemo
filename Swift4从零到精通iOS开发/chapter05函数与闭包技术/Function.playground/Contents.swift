import UIKit
import Foundation

func isMoreThanTen(count: Int) -> Bool {
    if count > 10 {
        return true
    } else {
        return false
    }
}
isMoreThanTen(count: 9)
isMoreThanTen(count: 11)

func myFunc1() -> String {
    return "无参函数"
}
myFunc1()

func myFunc2() -> Void {
    print("无参无返回值")
}
func myFunc3() {
    print("省略返回值")
}
myFunc2()
myFunc3()

func searchData(dataID: String) -> (success:Bool, data: String) {
    let result = true
    let data = "数据实体"
    return (result, data)
}
if searchData(dataID: "1101").success {
    print(searchData(dataID: "1101").data)
}

func myFunc4(param: Int) -> Int? {
    guard param > 100 else {
        return nil
    }
    return param - 100
}
if let tmp = myFunc4(param: 101) {
    print(tmp)
}

func myFunc5(param1: Int, param2: Int, param3: Int) {
    param1 + param2 + param3
}
myFunc5(param1: 1, param2: 2, param3: 3)

func myFunc6(out1 param1: Int, out2 param2: Int, out3 param3: Int) {
    param1 + param2 + param3
}
myFunc6(out1: 1, out2: 2, out3: 3)

func myFunc7(_ param1: Int, _ param2: Int, _ param3: Int) {
    param1 + param2 + param3
}
myFunc7(1, 2, 3)

func myFunc8(param1: Int, param2: Int = 10, param3: Int = 5) {
    param1 + param2 + param3
}
myFunc8(param1: 1, param2: 1, param3: 1)
myFunc8(param1: 10)
func myFunc9(param1: Int, param2: Int = 10, param3: Int) {
    param1 + param2 + param3
}
myFunc9(param1: 10, param3: 10)

func myFunc10(param: Int...) {
    var sum = 0
    for count in param {
        sum += count
    }
    print(sum)
}
myFunc10(param: 1, 2, 3, 4, 5)
myFunc10(param: 12, 2, 3)

func myFunc11(param1: Int..., param2: String) {
    var sum = 0
    for count in param1 {
        sum += count
    }
    print("\(param2):\(sum)")
}
myFunc11(param1: 1, 2, 3, param2: "hello")

func myFunc12(param: inout Int) {
    param += 1
}
var para = 10
myFunc12(param: &para)
print(para)

var addFunc:(Int, Int) -> Int
addFunc = {(param1: Int, param2: Int) in return param1 + param2}
addFunc(2, 3)

func myFunc13(param1: Int, param2: Int) -> Int {
    return param1 + param2
}
addFunc = myFunc13
addFunc(1, 2)

func myFunc14(param:(Int, Int) -> Int) {
    print(param(1, 2))
}
myFunc14(param: addFunc)

func myFunc15() -> (Int, Int) -> Int {
    return {(param1: Int, param2: Int) in
        return param1 + param2
    }
}
addFunc = myFunc15()
addFunc(1, 2)

func myFunc16() -> (Int, Int) -> Int {
    func subFunc(param1: Int, param2: Int) -> Int {
        return param1 + param2
    }
    return subFunc
}

