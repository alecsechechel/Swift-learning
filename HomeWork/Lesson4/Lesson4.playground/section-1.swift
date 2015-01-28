// Optional
// Part 1

let constOne = "10"
let constTwo = "13d"
let constThree = "a10"
let constFouth = "99"
let constFive = "1.0"

var sumIntOpt = 0
// Optional binding
if let constOneInt = constOne.toInt() {
    sumIntOpt += constOneInt
}
if let constTwoInt = constTwo.toInt() {
    sumIntOpt += constTwoInt
}
if let constThreeInt = constThree.toInt() {
    sumIntOpt += constThreeInt
}
if let constFouthInt = constFouth.toInt() {
    sumIntOpt += constFouthInt
}
if let constFiveInt = constFive.toInt() {
    sumIntOpt += constFiveInt
}

var sumIntFor = 0
// Forced unwrapping
var temp = constOne.toInt()
if temp != nil {
    sumIntFor += temp!
}
temp = constTwo.toInt()
if temp != nil {
    sumIntFor += temp!
}
temp = constThree.toInt()
if temp != nil {
    sumIntFor += temp!
}
temp = constFouth.toInt()
if temp != nil {
    sumIntFor += temp!
}
temp = constFive.toInt()
if temp != nil {
    sumIntFor += temp!
}

// Part 2
// If var has type not optional he muss inatilization!
var serverResponse : (statusCode: Int, message: String?, errorMessage: String?)
serverResponse.statusCode = 201
serverResponse.message = "Created"
serverResponse.errorMessage = nil

if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    println("Message is = \(serverResponse.message!)")
} else if serverResponse.errorMessage != nil {
    println("Error message is = \(serverResponse.errorMessage!)")
}

var serverResponseNew : (message: String?, errorMessage: String?)
serverResponseNew.errorMessage = "Method Not Allowed"

if serverResponseNew.message != nil {
    println("Message is = \(serverResponseNew.message!)")
} else if serverResponseNew.errorMessage != nil {
    println("Error message is = \(serverResponseNew.errorMessage!)")
}

// Part 3
println()
var studentOne : (name: String!, numberCar: String?, note: Int?)
var studentTwo : (name: String!, numberCar: String?, note: Int?)
var studentThree : (name: String!, numberCar: String?, note: Int?)
var studentFour : (name: String!, numberCar: String?, note: Int?)
var studentFive : (name: String!, numberCar: String?, note: Int?)

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
























