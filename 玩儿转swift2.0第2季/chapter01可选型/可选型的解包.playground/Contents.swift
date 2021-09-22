import UIKit

var errorCode: String? = "404"
print(errorCode)

"The errorCode is " + errorCode!

if errorCode != nil {
    "The errorCode is " + errorCode!
} else {
    "No error"
}

if let unWrapErrorCode = errorCode {
    "The errorCode is " + unWrapErrorCode
} else {
    "No error"
}

if var errorCode = errorCode {
    "The errorCode is " + errorCode
} else {
    "No error"
}

var errorMessage: String? = "Not found"
if let errorCode = errorCode {
    if let errorMessage = errorMessage {
        "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
    }
}

if let errorCode = errorCode, let errorMessage = errorMessage {
    "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
}

if let errorCode = errorCode, let errorMessage = errorMessage, errorCode == "404" {
    print("Page not found")
}
