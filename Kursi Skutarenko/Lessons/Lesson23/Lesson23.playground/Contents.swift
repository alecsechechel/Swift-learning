// Lesson23 Опциональные цепочки и приведение типов
import Foundation

class Address {
    
    var street = "Deribasovskaya"
    var number = "1"
    var city = "Odessa"
    var country = "Ukraine"
}

struct Garage {
    var size = 2
}

class House {
    
    var rooms = 1
    var address = Address()
    var garage : Garage? = Garage()
}

class Car {
    var model = "Zaporojec"
    
    func start() {
        
    }
}

class Person {
    var cars : [Car]? = [Car()]
    var house : House? = House()
}

let p = Person()

p.cars![0]
p.house!

p.house!.garage!.size

if let house = p.house {
    if let garage = house.garage {
        garage.size
    }
}

if (p.house?.garage?.size = 3) != nil {
    println("upgrade")
} else {
    println("fail")
}

if let size = p.house?.garage?.size {
    size
}

(p.cars?[0].model)!

//p.cars?[1].model падает если нету елемента в массиве

if p.cars?[0].start() != nil {
    println("Start")
} else {
    println("fail")
}


// Type casting

class Symbol {
    
}

class A: Symbol {
    func aa(){}
    
}

class B: Symbol {
    func bb(){}

}
//AnyObject Any
let array : [Any] = [A(), B(), Symbol(), A(), A(), B(), NSObject(), "a", {() -> () in return}];
var aCount = 0
var bCount = 0
var sCount = 0
for value in array {
    if value is A {
        aCount++
    } else if value is B {
        bCount++
    } else {
        sCount++
    }
    
    if let a = value as? A {
        a.aa()
    }
    
    if value is NSString {
        println("a")
    }
    
    
}

aCount
bCount
sCount










