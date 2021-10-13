import UIKit

var str = "Hello, playground"
var count = 5
var group = (1, 2, "12")
var bol = true

1 + 2
2 - 1
2 * 2
4 / 2
4 % 3

var tmp = 1
tmp += 3
tmp -= 3
tmp *= 3
tmp /= 3
tmp %= 3

var a = 1
var b = -2
+b
-a

var p1 = true
var p2 = false
p1 && p2
p1 || p2
!p1

1 == 2
1 < 2
1 > 2
1 != 2
1 <= 2
1 >= 2

var tp1 = (3, 4, "5")
var tp2 = (2, 6, "9")
var tp3 = ("1", 4, 5)
tp1 < tp2

var m = 3
var n = 6
if m > n {
    print("m > n")
} else {
    print("m <= n")
}
print(m > n ? "m > n" : "m <= n")

var q: Int? = 8
var value: Int
if q != nil {
    value = q!
} else {
    value = 0
}
value = q != nil ? q! : 0
value = q ?? 0

var range1 = 0...10
var range2 = 0..<10
print(range1 ~= 8)
