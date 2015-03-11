//Lesson 9 about Switch

//mainLoop: for _ in 0...1000 {
//    for i in 0..<20 {
//        if i == 10 {
//            println(i)
//            break mainLoop
//        }
//    }
//}

//fallthrough продолжает case
var age = 58
switch age {
    case 0...16:
        println("Young")
    case 17...21:
        println("Normal")
    case 22...50:
        println("Normal too")
    case 51, 56, 57:
        println("hello")
    default:
        break
}
//we can use where in case
var name = "Alex"
switch name {
    case "Alex" where age < 50:
        println(name)
    case "Alex" where age >= 50:
        println(name)
    default:
        break
}
var optional: Int? = 5
if let a = optional {
    
}

let tuple = (name, age)

switch tuple {
    case ("Alex", 60):
        println("hi alex")
    case (_, let number) where number >= 65 && number <= 70:
        println("Hi old man")
    case ("Alex", _):
        println("Alex")
    default:
        break
}

let point = (5, 5)

switch point {
    case let (x, y) where x == y:
        println("x == y")
    case let (x, y) where x == -y:
        println("x == -y")
    case let (_, y) where y < 0:
        println("y < 0")
    default :
        break
}

let array : [Printable] = [5, 5.4, Float(5.4)]

switch array[1] {
    case _ as Int : println("Int")
    case _ as Double : println("Double")
    case _ as Float : println("Float")
    default: break
}




