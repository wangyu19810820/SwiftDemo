import UIKit

func buy(money: Int, price: Int, capacity: Int, volume: Int) {
    if money >= price {
        if capacity >= volume {
            print("I can buy it!")
            print("\(money - price) yuan left.")
            print("\(capacity - volume) cubic meters left")
        } else {
            print("Not enough capacity")
        }
    } else {
        print("Not enough money")
    }
}

func buy2(money: Int, price: Int, capacity: Int, volume: Int) {
    guard money >= price else {
        print("Not enough money")
        return
    }
    
    guard capacity >= volume else {
        print("Not enough capacity")
        return
    }
    
    print("I can buy it!")
    print("\(money - price) yuan left.")
    print("\(capacity - volume) cubic meters left")
}

buy2(money: 300, price: 200, capacity: 150, volume: 70)
