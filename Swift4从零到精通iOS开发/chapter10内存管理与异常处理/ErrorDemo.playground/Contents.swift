import UIKit

enum MyError: Error {
    case DesTroyError
    case NormalError
    case SimpleError
}
print("should error")
//throw MyError.DesTroyError
print("finish")

func MyFunc(param: Bool) throws -> Void {
    if param {
        print("success")
    } else {
        throw MyError.NormalError
    }
}

do {
    try MyFunc(param: false)
} catch MyError.SimpleError {
    print("SimpleError")
} catch MyError.NormalError {
    print("NormalError")
} catch MyError.DesTroyError {
    print("DesTroyError")
} catch {
    print("otherError")
}

var tmp = try? MyFunc(param: false)
if tmp == nil {
    print("执行失败")
} else {
    print("执行成功")
}

if let _ = try? MyFunc(param: false) {
    print("success")
} else {
    print("fail")
}

try! MyFunc(param: true)

func TemFunc() throws -> Void {
    defer {
        print("finish")
    }
    print("handle")
    throw MyError.DesTroyError
}
do {
    try TemFunc()
} catch {
    print("TemFunc抛出一个异常")
}
