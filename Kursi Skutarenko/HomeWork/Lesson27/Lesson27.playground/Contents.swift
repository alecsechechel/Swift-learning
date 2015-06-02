import Foundation
//part1
//1. Объявить протокол Food, который будет иметь проперти name (только чтение) и метод taste(), который будет выводить текст со вкусовыми ощущениями
//
//2. Все продукты разных типов, которые вы принесли из супермаркета, находятся в сумке (массив) и все, как ни странно, реализуют протокол Food. Вам нужно пройтись по сумке, назвать предмет и откусить кусочек. Можете отсортировать продукты до имени. Используйте для этого отдельную функцию, которая принимает массив продуктов
//protocol Sort {
//    var order : Int {get}
//}
//
//protocol Food : Sort {
//    var name : String {get}
//    func taste() -> String
//}
//
//class Product : Food {
//    var name : String
//    var order : Int
//
//    func taste() -> String {
//        return "It is testy"
//    }
//    
//    init (name: String, order: Int) {
//        self.name = name
//        self.order = order
//    }
//}
//
//struct FastFood : Food  {
//    var name : String
//    var order : Int
//
//    func taste() -> String {
//        return "It so bad"
//    }
//}
//
//func sortFood(var array : [Food]) -> [Food] {
//
//    array.sort({ food1,food2 in
//        if food1.order == food2.order {
//            return food1.name.lowercaseString < food2.name.lowercaseString
//        } else {
//            return food1.order < food2.order
//        }
//    })
//
//    return array
//}
//
//let bread = Product(name: "Bread", order: 1)
//let meat = Product(name: "Meat", order: 1)
//let milk = Product(name: "Milk", order: 2)
//let juse = Product(name: "Juse", order: 2)
//let gamburger = FastFood(name: "Gamburger", order: 3)
//let bigMak = FastFood(name: "Big Mak", order: 3)
//
//var foodBasket : [Food] = [bread, meat, milk, juse, gamburger, bigMak]
//
//for food in foodBasket {
//    println(food.name)
//    println(food.taste())
//}
//
//var sortFoodBasket = sortFood(foodBasket)
//println("\nSort food \n")
//for food in sortFoodBasket {
//    println(food.name)
//    println(food.taste())
//}
// PART 1 END

//3. Некоторые продукты могут испортиться, если их не положить в холодильник. Создайте новый протокол Storable, он наследуется от протокола Food и содержит еще булевую проперти - expired. У некоторых продуктов замените Food на Storable. Теперь пройдитесь по всем продуктам и, если продукт надо хранить в холодильнике, то перенесите его туда, но только если продукт не испорчен уже, иначе просто избавьтесь от него. Используйте функцию для вывода продуктов для вывода содержимого холодильника
//4. Добавьте проперти daysToExpire в протокол Storable. Отсортируйте массив продуктов в холодильнике. Сначала пусть идут те, кто быстрее портятся. Если срок совпадает, то сортируйте по имени.
//protocol Food {
//    var name : String {get}
//    func taste() -> String
//}
//
//protocol Storable : Food {
//    var expired : Bool {get}
//    var daysToExpire : Int {get}
//}
//
//class Product : Food {
//    var name : String
//    var expired : Bool
//
//    func taste() -> String {
//        return "It is testy"
//    }
//
//    init (name: String, expired: Bool) {
//        self.name = name
//        self.expired = expired
//    }
//}
//
//class ProductInRefrigerator : Product, Storable {
//    var daysToExpire : Int
//    
//    init(name: String, expired: Bool, daysToExpire: Int) {
//        self.daysToExpire = daysToExpire
//        super.init(name: name, expired: expired)
//    }
//}
//
//struct FastFood : Food  {
//    var name : String
//
//    func taste() -> String {
//        return "It so bad"
//    }
//}
//
//func sortFoodInRefrigerator(var array : [Storable]) -> [Storable] {
//    
//        array.sort({ firstFood, secondFood in
//            if firstFood.daysToExpire == secondFood.daysToExpire {
//                return firstFood.name.lowercaseString > secondFood.name.lowercaseString
//            } else {
//                return firstFood.daysToExpire < secondFood.daysToExpire
//            }
//        })
//    
//        return array
//}
//
//let bread = Product(name: "Bread", expired: true)
//let meat = ProductInRefrigerator(name: "Meat", expired: true, daysToExpire : 5)
//let milk = ProductInRefrigerator(name: "Milk", expired: false, daysToExpire : 0)
//let cheese = ProductInRefrigerator(name: "Сheese", expired: true, daysToExpire : 2)
//let sausage = ProductInRefrigerator(name: "Sausage", expired: true, daysToExpire : 2)
//let juse = Product(name: "Juse", expired: true)
//let gamburger = FastFood(name: "Gamburger")
//let bigMak = FastFood(name: "Big Mak")
//
//var foodBasket : [Food] = [bread, meat, milk, juse, gamburger, bigMak, cheese, sausage]
//var foodInRefrigerator = [Storable]()
//for food in foodBasket {
//    if let newFood = food as? ProductInRefrigerator {
//        if newFood.expired {
//            foodInRefrigerator.append(newFood)
//        }
//    }
//}
//
//for food in foodInRefrigerator {
//    println(food.name)
//    println(food.taste())
//}
//println("\n\n")
//
//var sortFood : [Storable] = sortFoodInRefrigerator(foodInRefrigerator)
//for food in sortFood {
//    println(food.name)
//    println(food.taste())
//}

//5. Не все, что мы кладем в холодильник, является едой. Поэтому сделайте так, чтобы Storable не наследовался от Food. Мы по прежнему приносим еду домой, но некоторые продукты реализуют теперь 2 протокола. Холодильник принимает только те продукты, которые еще и Storable. функция сортировки должна по прежнему работать.
protocol Food {
    var name : String {get}
    func taste() -> String
}

protocol Storable {
    var name : String {get}
    var expired : Bool {get}
    var daysToExpire : Int {get}
}

protocol Things : Food, Storable {
    
}

class Product : Food {
    var name : String

    func taste() -> String {
        return "It is testy"
    }

    init (name: String) {
        self.name = name
    }
}

class ProductInRefrigerator : Food, Storable {
    var daysToExpire : Int
    var expired : Bool
    var name : String
    
    func taste() -> String {
        return "It is testy"
    }

    init(name: String, expired: Bool, daysToExpire: Int) {
        self.name = name
        self.expired = expired
        self.daysToExpire = daysToExpire
    }
}

struct Medical : Storable  {
    var name : String
    var expired : Bool
    var daysToExpire : Int
}

func sortFoodInRefrigerator(var array : [protocol<Food, Storable>]) -> [protocol<Food, Storable>] {
    
    array.sort({ firstFood, secondFood in
        if firstFood.daysToExpire == secondFood.daysToExpire {
            return firstFood.name.lowercaseString > secondFood.name.lowercaseString
        } else {
            return firstFood.daysToExpire < secondFood.daysToExpire
        }
    })
    
    return array
}

let bread = Product(name: "Bread")
let meat = ProductInRefrigerator(name: "Meat", expired: true, daysToExpire : 5)
let milk = ProductInRefrigerator(name: "Milk", expired: false, daysToExpire : 0)
let cheese = ProductInRefrigerator(name: "Сheese", expired: true, daysToExpire : 2)
let sausage = ProductInRefrigerator(name: "Sausage", expired: true, daysToExpire : 2)
let aspirin = Medical(name: "Aspirin", expired: true, daysToExpire : 300)
let panadol = Medical(name: "Panadol", expired: true, daysToExpire : 400)

var things : [Any] = [bread, meat, milk, cheese, sausage, aspirin, panadol]
var newFood : [protocol<Food, Storable>] = []
var sortNewFood : [protocol<Food, Storable>] = []

for thing in things {
    if let test = thing as? protocol<Food, Storable> {
        if test.expired {
            newFood.append(test)
        }
    }
        
}
sortNewFood = sortFoodInRefrigerator(newFood)
for food in sortNewFood {
        println(food.name)
}


