import UIKit

let str: String = "Hello, Swift"

let color: UIColor = UIColor.blue

var arr = [3, 2, 1]
arr.sort()
arr.firstIndex(of: 2)
print(arr)

class Something {
    init(){}
}

/**
 aaaaaaaaaaa aaaaaaa aaaaa aaaa aaaa aaaa aaaaaa aaaaa aaaaaaaa aaaaaaaa
 
 bbbb bbbbb
 
 - cccc
 - dddd
 - eeee
 
 1. item1
 2. item2
 3. item3
 
 ```
 let a = "Hello"
 let b = "Swift"
 ```
 */
func showMultilineComments() -> String {
    let text = "You can use the /** ... */ for multiline comments"
    return text
}

/// Hello, Swift
///
/// Hello, iOS App
/// - You can use `*` or `_` to make emphasis like *this* and _this_.
/// - You can also use `**` to make text strong or bold like **this**
/// - You can use the links syntax. Welcome to [imooc](http://imooc.com).
/// - You can use the images syntax. This is an example. ![baidu logo](https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png)
func showSinglelineComments() -> String {
    let text = "You can use the /// for multiline comments"
    return text
}
