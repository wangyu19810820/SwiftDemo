import UIKit

func myFunc(param: Int) -> Int {
    return param * param
}
var myClosures = {(param: Int) -> Int in
    return param * param
}
myFunc(param: 3)
myClosures(3)

myClosures = {(param: Int) in
    return param * param
}

func mySort(array: inout Array<Any>, sortClosure:(Any, Any) -> Bool) -> Array<Any> {
    for indexI in array.indices {
        if indexI == array.count - 1 {
            break
        }
        for indexJ in 0...((array.count - 1) - indexI - 1) {
            if sortClosure(array[indexJ], array[indexJ + 1]) {

            } else {
                array.swapAt(indexJ, indexJ + 1)
            }
        }
    }
    return array
}
var array:Array<Any> = [1, 4, 3, 5, 7, 5, 4, 2, 7]
mySort(array: &array, sortClosure: {(index, nextIndex) in
    return index as! Int > nextIndex as! Int
})
print(array)

class Student : CustomStringConvertible {
    let achievement: Int
    let name: String
    init(name: String, achievement: Int) {
        self.achievement = achievement
        self.name = name
    }
    
    var description: String {
        return "\(self.name):\(self.achievement)"
    }
}
let stu1 = Student(name: "小王", achievement: 89)
let stu2 = Student(name: "小李", achievement: 69)
let stu3 = Student(name: "小张", achievement: 81)
let stu4 = Student(name: "小孙", achievement: 93)
var stuArr: Array<Any> = [stu1, stu2, stu3, stu4]
mySort(array: &stuArr, sortClosure: {(element: Any, nextElement: Any) -> Bool in
    return (element as! Student).achievement > (nextElement as! Student).achievement
})
print(stuArr)

mySort(array: &stuArr, sortClosure: {(element: Any, nextElement: Any) in
    return (element as! Student).achievement > (nextElement as! Student).achievement
})

mySort(array: &stuArr, sortClosure: {(element: Any, nextElement: Any) in
    (element as! Student).achievement > (nextElement as! Student).achievement
})

mySort(array: &stuArr, sortClosure: {
    ($0 as! Student).achievement > ($1 as! Student).achievement
})

mySort(array: &stuArr) {
    ($0 as! Student).achievement > ($1 as! Student).achievement
}

func myFunc(closure:(Int, Int) -> Bool) {
}
myFunc{
    $0 > $1
}

// 自动闭包不能有参数，调用函数传参时，闭包的实现只能由一句表达式组成，闭包的返回值即为此表达式的值
func myFunc2(closure:@autoclosure @escaping ()-> Bool)  {
}
myFunc2(closure: 1 + 2 + 3 > 10)
