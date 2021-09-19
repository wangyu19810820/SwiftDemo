import UIKit

var point = (5, 2)
var httpResponse = (404, "Not Found")

var point2:(Int, Int, Int) = (10, 5, 2)
var httpResponse2:(Int, String) = (200, "OK")

let(x, y) = point
var(statusCode, statusMessage) = httpResponse

statusCode = 405
point.0
point.1

let point3 = (x:3, y:2)
point3.x
point3.y

let point4:(x:Int, y:Int) = (10, 5)
point4.x
point4.y

let loginResult = (true, "wangyu")
let (isLoginSuccess, _) = loginResult
if isLoginSuccess {
    print("login success!")
} else {
    print("login failed!")
}
