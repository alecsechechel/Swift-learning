// Lesson 3 Tuples
// Cоздаем когда нельзя придумать нормальную структуру, если можно создае класс или структуру

let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.5)

let (number, name, isGood, decimal) = simpleTuple

number
name
isGood
decimal

let (_, _, check2, _) = simpleTuple

check2

simpleTuple.0
simpleTuple.1
simpleTuple.2

let tuple = (index:1, phrase:"Hello", register:true, latency:2.5)

tuple.phrase

var varTuple = (index:2, phrase:"Hello")
varTuple.index = 3
varTuple.0

let a = (x:1, y:2)
var b = (x:2, y:3)

b = a //одинаковые именна и типы

//let redColor = "red"
//let greenColor = "green"
//let blueColor = "blue"

let (redColor, greenColor, blueColor) = ("red", "green", "blue")

redColor

let totalNumber = 5
let merchantName = "Alex"

println("\(totalNumber) \(merchantName)")

println((totalNumber, merchantName))

var myPower = (pushUps:50, tightening:20, squats:50)
var myPower1 = (pushUps:45, tightening:30, squats:10)

let mod = { $0 > 0 ? $0 : -1*$0 }
var a1 = -10
var difStat = myPower
difStat.0 = abs(a1)







