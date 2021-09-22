import UIKit

var error1: (errorCode: Int, errorMessage: String?) = (404, "Not found")
error1.errorMessage = nil
//error1 = nil

var error2: (errorCode: Int, errorMessage: String)? = (404, "Not found")
//error2?.errorMessage = nil
error2 = nil

var error3: (errorCode: Int, errorMessage: String?)? = (404, "Not found")
error3?.errorMessage = nil
error3 = nil

var ageInput: String = "16"
var age = Int(ageInput)

if let age = Int(ageInput), age < 20 {
    print("You're a teenager!")
}

var greetings = "Hello"
greetings.range(of: "ll")
greetings.range(of: "oo")
