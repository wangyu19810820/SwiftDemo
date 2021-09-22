import UIKit

var errorMessage: String? = "Not Found"
if let errorMessage = errorMessage {
    errorMessage.uppercased()
}
errorMessage?.uppercased()
//errorMessage!.uppercased()

var uppercaseErrorMessage = errorMessage?.uppercased()

if let errorMessage = errorMessage?.uppercased() {
    errorMessage
}

let message: String
if let errorMessage = errorMessage {
    message = errorMessage
} else {
    message = "No error"
}

let message2: String = errorMessage == nil ? "No error" : errorMessage!
let message3: String = errorMessage ?? "No error"
