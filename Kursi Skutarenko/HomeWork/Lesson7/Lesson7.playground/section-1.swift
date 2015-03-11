// Lesson7 array
import UIKit

// part1
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let nameMonths   = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthAndDay : [(name: String, day: Int)] = []

for var i = 0; i < nameMonths.count; i++ {
    
    monthAndDay += [(nameMonths[i], daysInMonths[i])]
}

for days in daysInMonths {
    
    println(days)
}

for var i = 0; i < daysInMonths.count; i++ {
    
   println("\(nameMonths[i]) has \(daysInMonths[i]) days!" )
}

println()

for (index, value) in enumerate(daysInMonths) {
    
    println("\(nameMonths[index]) has \(value) days!")
}

println()

for tupl in monthAndDay {
    
    println("\(tupl.name) has \(tupl.day) days!")
}

println()

for var i = daysInMonths.count - 1; i >= 0; i-- {
    
    println(daysInMonths[i])
}
println()

let randomMonth = Int(arc4random_uniform(12) + 1)
var randomDay   = Int(arc4random_uniform(UInt32(daysInMonths[randomMonth - 1])) + 1)
let randomDate  = (month: randomMonth, day: randomDay)
var countDay    = 0

for var i = 0; i < randomDate.month - 1; i++ {
    countDay += daysInMonths[i]
}
println("Days from \(randomDate.month).\(randomDate.day) = \(countDay + randomDate.day - 1)\n")

//part 2
let optionalArray = ["5", "3c", "10", "12", "one"]
var sumArray      = 0

let opt : [Int?] = [5, 6, nil, 1, nil]
var sum = 0
for value in opt {
    if let value = value {
        sum += value
    }
}

//optional binding
for var i = 0; i < optionalArray.count; i++ {
    if let num = optionalArray[i].toInt() {
        sumArray += num
    }
}
sumArray
sumArray = 0

//forced unwrapping
for var i = 0; i < optionalArray.count; i++ {
    if optionalArray[i].toInt() != nil {
        sumArray += optionalArray[i].toInt()!
    }
}
sumArray
sumArray = 0

// ??
for var i = 0; i < optionalArray.count; i++ {
    sumArray += optionalArray[i].toInt() ?? 0
}
sumArray

//part3
let alphabet      = "abcdefghijklmnopqrstuvwxyz"
let alphabetArray2 = map(reverse(alphabet)) { s -> String in String(s) }
var alphabetArray = [String]()
for char in alphabet {
    alphabetArray.insert(String(char), atIndex: 0)
}
println(alphabetArray)
println(alphabetArray2)






