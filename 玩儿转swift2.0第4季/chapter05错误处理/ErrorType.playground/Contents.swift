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
    
    enum VendingMachineError: Error {
        case NoSuchItem
        case NotEnoughMoney(Int)
        case OutOfStock
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
}

Int("2")
Int("Hello, Swift")
