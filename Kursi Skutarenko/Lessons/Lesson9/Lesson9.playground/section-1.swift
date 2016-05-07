//Lesson 9 about Switch

//mainLoop: for _ in 0...1000 {
//    for i in 0..<20 {
//        if i == 10 {
//            print(i)
//            break mainLoop
//        }
//    }
//}

//fallthrough продолжает case
var age = 58
switch age {
    case 0...16:
        print("Young")
    case 17...21:
        print("Normal")
    case 22...50:
        print("Normal too")
    case 51, 56, 57:
        print("hello")
    default:
        break
}
//we can use where in case
var name = "Alex"
switch name {
    case "Alex" where age < 50:
        print(name)
    case "Alex" where age >= 50:
        print(name)
    default:
        break
}
var optional: Int? = 5
if let a = optional {
    
}

let tuple = (name, age)

switch tuple {
    case ("Alex", 60):
        print("hi alex")
    case (_, let number) where number >= 65 && number <= 70:
        print("Hi old man")
    case ("Alex", _):
        print("Alex")
    default:
        break
}

let point = (5, 5)

switch point {
    case let (x, y) where x == y:
        print("x == y")
    case let (x, y) where x == -y:
        print("x == -y")
    case let (_, y) where y < 0:
        print("y < 0")
    default :
        break
}

let array: [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[2] {
    case _ as Int : print("Int")
    case _ as Double : print("Double")
    case _ as Float : print("Float")
    default: break
}




