//: Protocol
import Foundation

protocol Priority {
    var order : Int {get}
}

protocol EntryName : Priority {
    var label : String { get }
}

class Student : EntryName {
    
    var firstName : String
    var lastName : String
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var label : String {
        return fullName
    }
    
    let order = 1
    
}

class Cow : EntryName {
    var name : String?
    
    var label : String {
        return name ?? "a cow"
    }
    
    let order = 2
}

struct Grass : EntryName {
    var type : String
    
    var label : String {
        return "Grass: " + type
    }
    
    let order = 3
}

let student1 = Student(firstName: "Bob", lastName: "Bo")
let student2 = Student(firstName: "Bil", lastName: "Bi")
let student3 = Student(firstName: "Brian", lastName: "Br")

let cow1 = Cow()
cow1.name = "Burenka"
let cow2 = Cow()

let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "Augustin")



//for value in array {
//    
////    if let grass = value as? Grass {
////        println(grass.type)
////    } else if let student = value as? Student {
////        println(student.fullName)
////    } else if let cow = value as? Cow {
////        println(cow.name ?? "a cow")
////    }
//    
//    switch value {
//    case let grass as Grass: println(grass.type)
//    case let student as Student: println(student.fullName)
//    case let cow as Cow: println(cow.name ?? "a cow")
//    default:break
//    }
//}

func printFarm(var array: [EntryName]) {
    
    array.sort({a, b in
        if a.order == b.order {
            return a.label.lowercaseString < b.label.lowercaseString
        } else {
            return a.order < b.order
        }
    })
    
    for value in array {
        println(value.label)
    }
    
}

var array : [EntryName] = [cow1, student1, grass2, cow2, student3, grass1, student2]

printFarm(array)













