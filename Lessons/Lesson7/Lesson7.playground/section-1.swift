// Lesson7 array and dictionary

let constArray : [String] = ["a", "b", "c", "d"]

var array = [String]()

if array.isEmpty {
    println("Array is empty")
}

array += constArray // add array

array += ["e"]
array.append("f")

var array2 = array
array2[0] = "1" // доступ по сабскрипту

//array[1..<4] = ["0"]
array.insert("-", atIndex: 3)
array.removeAtIndex(3)
array
//let test = [Int](count: 10, repeatedValue: 100)
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]
var sum = 0

for var i = 0; i < money.count; i++ {
    println("i = \(i)")
    sum += money[i]
}
sum
sum = 0
for i in 0..<money.count {
    sum += money[i]
}
sum
sum = 0
for i in money {
    sum += i
}
sum
sum = 0
for (index, value) in enumerate(money) {
    println("index = \(index) value = \(value)")
    sum += value
}
sum





