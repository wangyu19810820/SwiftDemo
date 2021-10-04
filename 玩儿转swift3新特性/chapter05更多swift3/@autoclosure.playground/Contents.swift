import UIKit

let username: String? = "wangyu"
let screenname: String
if let username = username {
    screenname = username
} else {
    screenname = "Guest"
}

let screenname2 = username != nil ? username! : "Guest"

func login(username: String, password: String) -> String? {
    return username
}

let screenname3 = login(username: "wangyu", password: "123456") != nil ? login(username: "wangyu", password: "123456")! : "Guest"

let screenname4 = login(username: "wangyu", password: "123456") ?? "Guest"

func login2(username: String, password: String) -> String? {
    print("login...")
    return username
}

func generateNickName() -> String {
    print("generating...")
    return "imooc"
}

//let screenname5 = login2(username: "wangyu", password: "123456") ?? generateNickName()

infix operator ???
func ???<T>(optionalValue: T?, defaultValue: @autoclosure () -> T) -> T {
    if let value = optionalValue {
        return value
    }
    return defaultValue()
}
let screenname6 = login2(username: "wangyu", password: "123456") ??? generateNickName()
let screenname7 = login2(username: "wangyu", password: "123456") ??? "Guest"
