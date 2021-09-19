import UIKit

var greeting = "Hello, playground"

var battery = 18
let batteryColor:UIColor
//print(batteryColor)
if battery <= 20 {
    batteryColor = UIColor.red
} else {
    batteryColor = UIColor.green
}
//batteryColor = UIColor.black
batteryColor

var batterColor2 = battery <= 20 ? UIColor.red : UIColor.green
