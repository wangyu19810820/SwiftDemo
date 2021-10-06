import UIKit

func printTask(_ name: String) {
    for i in 0..<10 {
        print(name, i)
    }
}

//print("start")
//
//DispatchQueue.global().async {
//    printTask("A")
//}
//
//DispatchQueue.global().async {
//    printTask("B")
//}
//
//print("end")


//let serialQueue = DispatchQueue(label: "MySerialQueue")
//
//print("start")
//
//serialQueue.async {
//    printTask("A")
//}
//
//serialQueue.async {
//    printTask("B")
//}
//
//print("end")


print("start")

DispatchQueue.main.async {
    printTask("A")
}

DispatchQueue.main.async {
    printTask("B")
}

for _ in 0..<100 {
    print("end")
}
