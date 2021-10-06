import UIKit

func printTask(_ name: String) {
    for i in 0..<10 {
        print(name, i)
    }
}

//print("start")
//
//let lock = NSLock()
//
//DispatchQueue.global().async {
//    lock.lock()
//    printTask("A")
//    lock.unlock()
//}
//
//DispatchQueue.global().async {
//    lock.lock()
//    printTask("B")
//    lock.unlock()
//}
//
//print("end")


//print("start")
//
//let semaphore = DispatchSemaphore(value: 1)
//
//DispatchQueue.global().async {
//    semaphore.wait()
//    printTask("A")
//    semaphore.signal()
//}
//
//DispatchQueue.global().async {
//    semaphore.wait()
//    printTask("B")
//    semaphore.signal()
//}
//
//print("end")


//print("start")
//
//var count = 2
//let semaphore = DispatchSemaphore(value: 1)
//
//DispatchQueue.global().async {
//    printTask("A")
//
//    semaphore.wait()
//    count -= 1
//    let count = count
//    semaphore.signal()
//
//    if count > 0 {
//        return
//    }
//    printTask("C")
//}
//
//DispatchQueue.global().async {
//    printTask("B")
//
//    semaphore.wait()
//    count -= 1
//    let count = count
//    semaphore.signal()
//
//    if count > 0 {
//        return
//    }
//    printTask("C")
//}
//
//print("end")


print("start")

let group = DispatchGroup()

group.enter()
DispatchQueue.global().async {
    printTask("A")
    group.leave()
}

group.enter()
DispatchQueue.global().async {
    printTask("B")
    group.leave()
}

group.notify(queue: .global()) {
    printTask("C")
}

print("end")
