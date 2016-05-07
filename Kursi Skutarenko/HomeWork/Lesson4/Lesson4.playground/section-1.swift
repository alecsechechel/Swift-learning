// Optional
// Part 1

let constOne = "10"
let constTwo = "13d"
let constThree = "a10"
let constFouth = "99"
let constFive = "1.0"

var sumIntOpt = 0
// Optional binding
if let constOneInt = Int(constOne) {
    sumIntOpt += constOneInt
}
if let constTwoInt = Int(constTwo) {
    sumIntOpt += constTwoInt
}
if let constThreeInt = Int(constThree) {
    sumIntOpt += constThreeInt
}
if let constFouthInt = Int(constFouth) {
    sumIntOpt += constFouthInt
}
if let constFiveInt = Int(constFive) {
    sumIntOpt += constFiveInt
}

var sumIntFor = 0
// Forced unwrapping
var temp = Int(constOne)
if temp != nil {
    sumIntFor += temp!
}
temp = Int(constTwo)
if temp != nil {
    sumIntFor += temp!
}
temp = Int(constThree)
if temp != nil {
    sumIntFor += temp!
}
temp = Int(constFouth)
if temp != nil {
    sumIntFor += temp!
}
temp = Int(constFive)
if temp != nil {
    sumIntFor += temp!
}

// Part 2
// If var has type not optional he muss inatilization!
var serverResponse: (statusCode: Int, message: String?, errorMessage: String?)
serverResponse.statusCode = 201
serverResponse.message = "Created"
serverResponse.errorMessage = nil

if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    print("Message is = \(serverResponse.message!)")
} else if serverResponse.errorMessage != nil {
    print("Error message is = \(serverResponse.errorMessage!)")
}

var serverResponseNew: (message: String?, errorMessage: String?)
serverResponseNew.errorMessage = "Method Not Allowed"

if serverResponseNew.message != nil {
    print("Message is = \(serverResponseNew.message!)")
} else if serverResponseNew.errorMessage != nil {
    print("Error message is = \(serverResponseNew.errorMessage!)")
}

// Part 3
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
print("\(infoStudentOne)\n")

var infoStudentTwo = "My name is \(studentTwo.name)."
infoStudentTwo += (studentTwo.numberCar != nil) ? "\nI have car with number \"\(studentTwo.numberCar!)\"." : ""
infoStudentTwo += (studentTwo.note != nil) ? "\nMy result in exam is \"\(studentTwo.note!)\"." : ""
print("\(infoStudentTwo)\n")

var infoStudentThree = "My name is \(studentThree.name)."
infoStudentThree += (studentThree.numberCar != nil) ? "\nI have car with number \"\(studentThree.numberCar!)\"." : ""
infoStudentThree += (studentThree.note != nil) ? "\nMy result in exam is \"\(studentThree.note!)\"." : ""
print("\(infoStudentThree)\n")

var infoStudentFour = "My name is \(studentFour.name)."
infoStudentFour += (studentFour.numberCar != nil) ? "\nI have car with number \"\(studentFour.numberCar!)\"." : ""
infoStudentFour += (studentFour.note != nil) ? "\nMy result in exam is \"\(studentFour.note!)\"." : ""
print("\(infoStudentFour)\n")

var infoStudentFive = "My name is \(studentFive.name)."
infoStudentFive += (studentFive.numberCar != nil) ? "\nI have car with number \"\(studentFive.numberCar!)\"." : ""
infoStudentFive += (studentFive.note != nil) ? "\nMy result in exam is \"\(studentFive.note!)\"." : ""
print("\(infoStudentFive)\n")
























