import UIKit

func findMaxAndMin(numbers:[Int]) -> (max: Int, min: Int)? {
    guard !numbers.isEmpty else {
        return nil
    }
    var minValue = numbers[0]
    var maxValue = numbers[0]
    for number in numbers {
        minValue = min(minValue, number)
        maxValue = max(maxValue, number)
    }
    return (maxValue, minValue)
}

if let (x, y) = findMaxAndMin(numbers: [1, 2, 3]) {
    print(x, y)
}

func toBinary(num:Int) -> String {
    var num = num
    var res = ""
    repeat {
        res = String(num % 2) + res
        num /= 2
    } while num != 0
    return res
}

toBinary(num: 10)

func swapTwoInts(_ a:inout Int, _ b:inout Int) {
    (a, b) = (b, a)
    
//    let t:Int = a
//    a = b
//    b = t
}
var x = 1
var y = 2
swapTwoInts(&x, &y)
x
y
swap(&x, &y)
x
y

func initArray(_ arr:[Int], by value: Int) {
    var arr = arr
    for i in 0..<arr.count {
        arr[i] = value
    }
}

func initArray2(_ arr:inout [Int], by value: Int) {
    for i in 0..<arr.count {
        arr[i] = value
    }
}

var arr = [1, 2, 3]
initArray(arr, by: 0)
print(arr)

initArray2(&arr, by: 0)
print(arr)
