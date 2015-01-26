// Optional
// Part 1

let constOne = "10"
let constTwo = "13d"
let constThree = "a10"
let constFouth = "99"
let constFive = "1.0"

var sumIntOpt : Int
// Optional binding
let constOneInt = (constOne.toInt() != nil) ? constOne.toInt()! : 0
let constTwoInt = (constTwo.toInt() != nil) ? constTwo.toInt()! : 0
let constThreeInt = (constThree.toInt() != nil) ? constThree.toInt()! : 0
let constFouthInt = (constFouth.toInt() != nil) ? constFouth.toInt()! : 0
let constFiveInt = (constFive.toInt() != nil) ? constFive.toInt()! : 0
sumIntOpt = constOneInt + constTwoInt + constThreeInt + constFouthInt + constFiveInt

var sumIntFor : Int = 0
// Forced unwrapping
sumIntFor += (constOne.toInt() != nil) ? constOne.toInt()! : 0
sumIntFor += (constTwo.toInt() != nil) ? constTwo.toInt()! : 0
sumIntFor += (constThree.toInt() != nil) ? constThree.toInt()! : 0
sumIntFor += (constFouth.toInt() != nil) ? constFouth.toInt()! : 0
sumIntFor += (constFive.toInt() != nil) ? constFive.toInt()! : 0

// Part 2
var serverResponse:(statusCode: Int, message: String?, errorMessage: String?)
serverResponse.statusCode = 201
serverResponse.message = "Created"
serverResponse.errorMessage = nil
if serverResponse.statusCode >= 200 && serverResponse.statusCode <= 300 {
    println("Message is = \(serverResponse.message!)")
} else {
    println("Error message is = \(serverResponse.errorMessage!)")
}

var serverResponseNew: (message: String?, errorMessage: String?)
serverResponseNew.message = nil
serverResponseNew.errorMessage = "Method Not Allowed"
if serverResponseNew.message != nil {
    println("Message is = \(serverResponseNew.message!)")
} else {
    println("Error message is = \(serverResponseNew.errorMessage!)")
}

// Part 3
println()
var studentOne: (name: String, numberCar: String?, note: Int?) = ("", nil, nil)
var studentTwo: (name: String, numberCar: String?, note: Int?) = ("", nil, nil)
var studentThree: (name: String, numberCar: String?, note: Int?) = ("", nil, nil)
var studentFour: (name: String, numberCar: String?, note: Int?) = ("", nil, nil)
var studentFive: (name: String, numberCar: String?, note: Int?) = ("", nil, nil)

studentOne.name = "Alex"
studentOne.numberCar = "BM 342315 ИТ"
studentOne.note = 5

studentTwo.name = "Andrey"
studentTwo.note = 3

studentThree.name = "Ivan"
studentThree.note = 2

studentFour.name = "Dima"
studentFour.numberCar = "BM 225577 NA"

studentFive.name = "Potap"

var infoStudentOne = "My name is \(studentOne.name)."
infoStudentOne += (studentOne.numberCar != nil) ? "\nI have car with number \"\(studentOne.numberCar!)\"." : ""
infoStudentOne += (studentOne.note != nil) ? "\nMy result in exam is \"\(studentOne.note!)\"." : ""
println("\(infoStudentOne)\n")

var infoStudentTwo = "My name is \(studentTwo.name)."
infoStudentTwo += (studentTwo.numberCar != nil) ? "\nI have car with number \"\(studentTwo.numberCar!)\"." : ""
infoStudentTwo += (studentTwo.note != nil) ? "\nMy result in exam is \"\(studentTwo.note!)\"." : ""
println("\(infoStudentTwo)\n")

var infoStudentThree = "My name is \(studentThree.name)."
infoStudentThree += (studentThree.numberCar != nil) ? "\nI have car with number \"\(studentThree.numberCar!)\"." : ""
infoStudentThree += (studentThree.note != nil) ? "\nMy result in exam is \"\(studentThree.note!)\"." : ""
println("\(infoStudentThree)\n")

var infoStudentFour = "My name is \(studentFour.name)."
infoStudentFour += (studentFour.numberCar != nil) ? "\nI have car with number \"\(studentFour.numberCar!)\"." : ""
infoStudentFour += (studentFour.note != nil) ? "\nMy result in exam is \"\(studentFour.note!)\"." : ""
println("\(infoStudentFour)\n")

var infoStudentFive = "My name is \(studentFive.name)."
infoStudentFive += (studentFive.numberCar != nil) ? "\nI have car with number \"\(studentFive.numberCar!)\"." : ""
infoStudentFive += (studentFive.note != nil) ? "\nMy result in exam is \"\(studentFive.note!)\"." : ""
println("\(infoStudentFive)\n")
























