import UIKit

func swapTwoThins<T>(_ a: inout T, _ b: inout T) {
    (a, b) = (b, a)
}

var a: Int = 0
var b: Int = 6

swapTwoThins(&a, &b)
a
b

var hello = "Hello"
var bye = "Bye"

swapTwoThins(&hello, &bye)
hello
bye

