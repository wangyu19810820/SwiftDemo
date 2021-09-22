import UIKit

func findMaxAndMin(numbers: [Int]) -> (max:Int, min:Int)? {
    guard !numbers.isEmpty else {
        return nil
    }
    var minValue = numbers[0]
    var maxValue = numbers[0]
    for number in numbers {
        minValue = minValue < number ? minValue : number
        maxValue = maxValue > number ? maxValue : number
    }
    
    return (max:maxValue, min:minValue)
}

var scores:[Int]? = [202, 1234, 5678, 334, 982, 555]

if let result = findMaxAndMin(numbers: scores ?? []) {
    print("The max score is \(result.max)")
    print("The min score is \(result.min)")
}
