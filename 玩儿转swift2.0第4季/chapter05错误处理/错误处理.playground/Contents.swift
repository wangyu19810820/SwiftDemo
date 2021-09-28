import UIKit

class VendingMachine {
    struct Item {
        enum ItemType: String {
            case Water
            case Cola
            case Juice
        }
        
        let type: ItemType
        let price: Int
        var count: Int
    }
    
    enum VendingMachineError: Error, CustomStringConvertible {
        case NoSuchItem
        case NotEnoughMoney(Int)
        case OutOfStock
        
        var description: String {
            switch self {
            case .NoSuchItem:
                return "No Such Item"
            case .NotEnoughMoney(let price):
                return "Not Enough Money. " + String(price) + " Yuan needed."
            case .OutOfStock:
                return "Out Of Stock"
            }
        }
    }
    
    private var items = ["Mineral Water": Item(type: .Water, price: 2, count: 10),
                         "Coca Cola": Item(type: .Cola, price: 3, count: 5),
                         "Orange Juice": Item(type: .Juice, price: 5, count: 3)]
    
    func vend(itemName: String, money: Int) throws -> Int {
        guard let item = items[itemName] else {
            throw VendingMachineError.NoSuchItem
        }
        
        guard money >= item.price else {
            throw VendingMachineError.NotEnoughMoney(item.price)
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        
        dispenseItem(itemName: itemName)
        
        return money - item.price
    }
    
    private func dispenseItem(itemName: String) {
        items[itemName]!.count -= 1
        print("Enjoy you \(itemName)")
    }
    
    func display() {
        print("Want something to drink?")
        for itemName in items.keys {
            print("*", itemName)
        }
        print("=================================")
    }
}

let machine = VendingMachine()
machine.display()

var pocketMoney = 2
//try! machine.vend(itemName: "Coca Cola", money: pocketMoney)

//if let leftMoney = try? machine.vend(itemName: "Coca Cola", money: pocketMoney) {
//    print("buy coca cola success")
//} else {
//    print("buy coca cola failed")
//}

do {
    pocketMoney = try machine.vend(itemName: "Coca Cola", money: pocketMoney)
    print(pocketMoney, "Yuan left")
} catch VendingMachine.VendingMachineError.NoSuchItem {
    print("No Such Item")
} catch VendingMachine.VendingMachineError.NotEnoughMoney(let price) {
    print("Not Enough Money.", price, "Yuan needed.")
} catch VendingMachine.VendingMachineError.OutOfStock {
    print("Out Of Stock")
} catch {
    print("Error occured during vending.")
}

do {
    pocketMoney = try machine.vend(itemName: "Coca Cola", money: pocketMoney)
    print(pocketMoney, "Yuan left")
} catch let error as VendingMachine.VendingMachineError {
    print(error)
} catch {
    print("Error occured during vending.")
}

