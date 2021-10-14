import UIKit

struct Car {
    var price: Int
    var brand: String
    var petrol: Int
    
    mutating func drive() {
        if petrol > 0 {
            petrol -= 1
            print("drive 10 milo")
        }
    }
    
    mutating func addPetrol() {
        petrol += 10
        print("加了10单位油")
    }
}

var car = Car(price: 100000, brand: "奔驰", petrol: 10)
print("这辆\(car.brand)汽车价格\(car.price),油量\(car.petrol)")
for _ in 0...100 {
    if car.petrol == 0 {
        car.addPetrol()
    } else {
        car.drive()
    }
}

var car2 = car
car2.price = 50000
print("carPrice:\(car.price)\ncar2Price:\(car2.price)")

class ClassCar {
    var price: Int
    var brand: String
    var petrol: Int
    
    func drive() {
        if petrol > 0 {
            petrol -= 1
            print("drive 10 milo")
        }
    }
    
    func addPetrol() {
        petrol += 10
        print("加了10单位油")
    }
    
    init(price: Int, brand: String, petrol: Int) {
        self.price = price
        self.brand = brand
        self.petrol = petrol
    }
}

var classCar = ClassCar(price: 100000, brand: "宝马", petrol: 15)
print("这辆\(classCar.brand)汽车价格\(classCar.price),油量\(classCar.petrol)")
for _ in 0...100 {
    if classCar.petrol == 0 {
        classCar.addPetrol()
    } else {
        classCar.drive()
    }
}
var classCar2 = classCar
classCar2.price = 50000
print("classCarPrice:\(classCar.price)\nclassCar2Price:\(classCar2.price)")

class Transportation {
    var petrol: Int = 10
    
    func drive() {
        if petrol == 0 {
            self.addPetrol()
        }
    }
    
    func addPetrol() {
        petrol += 10
    }
}

class Car2: Transportation {
    var tyre: Int
    
    override func drive() {
        super.drive()
        print("在路上行驶了10km")
        self.petrol -= 1
    }
    
    init(tyreCount: Int) {
        tyre = tyreCount
    }
}

class Boat: Transportation {
    var floor: Int
    
    override func drive() {
        super.drive()
        print("在海上行驶了50km")
        self.petrol -= 2
    }
    
    init(floorCount: Int) {
        floor = floorCount
    }
}

class Airplane: Transportation {
    var height: Int
    
    override func drive() {
        super.drive()
        print("在天上行驶了100km")
        self.petrol -= 5
    }
    
    init(height: Int) {
        self.height = height
    }
}

var car3 = Car2(tyreCount: 4)
var boat = Boat(floorCount: 3)
var plane = Airplane(height: 3000)
car3.drive()
boat.drive()
plane.drive()

final class Shape {
    final var center:(Double, Double)
    
    init() {
        center = (0, 0)
    }
}

class TextClass {
}
var text1 = TextClass()
var text2 = text1
text1 === text2

