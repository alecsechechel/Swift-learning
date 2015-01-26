// Optional

var apples : Int? = 5

//apples = nil


if apples == nil {
    println("nil apples")
} else {
    println(apples)
    
    apples! += 2
}

if var number = apples {
    number += number
} else {
    println("nil apples")
}

let age = "26"

if age.toInt() != nil {
    let ageNumber = age.toInt()!
    println("My age is \(ageNumber)")
}

if let myAge = age.toInt() {
    println("\(myAge)")
}

var apple2 : Int! = nil


apple2 = 2

assert(apple2 != nil, "oh no!")

//apple2 += 2




