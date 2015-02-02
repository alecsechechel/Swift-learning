// Lesson7 array
import UIKit

// part1
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let nameMonths   = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthAndDay  = [(String, Int)]()

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
    
    println("\(tupl.0) has \(tupl.1) days!")
}

println()

for var i = daysInMonths.count - 1; i >= 0; i-- {
    
    println(daysInMonths[i])
}

let randomMonth = Int(arc4random_uniform(11) + 1)
var randomDay   = 0

if randomMonth == 2 {
    randomDay == Int(arc4random_uniform(27) + 1)
} else if randomMonth == 4 || randomMonth == 6 || randomMonth == 9 || randomMonth == 11 {
    randomDay = Int(arc4random_uniform(29) + 1)
} else {
    randomDay = Int(arc4random_uniform(30) + 1)
}

let randomDate = (month: randomMonth, day: randomDay)
randomDate.month
randomDate.day

var countDay   = 0

for var i = 0; i < randomDate.month - 1; i++ {
    countDay += daysInMonths[i]
}
println("Days from \(randomDate.month).\(randomDate.day) = \(countDay + randomDate.day)")

//part 2
let optionalArray = ["5", "3c", "10", "12", "one"]
var sumArray      = 0

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
var alphabetArray = [String]()

for char in alphabet {
    alphabetArray.insert(String(char), atIndex: 0)
}
println(alphabetArray)






