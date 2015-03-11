//Home work 9
import Foundation

//part1
let string           = "Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов. 2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа"
var counts = (countDecimal : 0, countPunctuation : 0, countVowel : 0, countСonsonant : 0)

for char in string.lowercaseString {
    switch char {
        case let c where String(c).toInt() != nil : counts.countDecimal
        case "а","о","э","и","у","ы","е","ё","ю","я" : counts.countVowel++
        case "ж", "ш", "ч", "б", "в", "г", "д",	"з", "к", "л", "м",	"н", "п", "р", "с", "т", "ф",	"х": counts.countСonsonant++
        case ",", ".", "!", "?", "-": counts.countPunctuation++
        default : break
    }
}

println("String have \(counts.countDecimal) decimals and \(counts.countVowel) vowels and \(counts.countСonsonant) consonant and \(counts.countPunctuation) punctuations symbols!\n")

//part 2
let age = 26
switch age {
    case 0...1:
        println("Младенчество")
    case 2...3:
        println("Раннее детство")
    case 4...6:
        println("Игровой возраст, дошкольный")
    case 7...12:
        println("Школьный возраст")
    case 13...20:
        println("Юность")
    case 21...25:
        println("Молодость")
    case 26...60:
        println("Взрослость")
    default:
        println("Старость")
}
println()

//part 3
let firstName      = "Алексей"
let lastName       = "Чечель"
let fatherName     = "Васильевич"
let charFirstName  = firstName.substringToIndex(firstName.startIndex.successor())
let charLastName   = lastName.substringToIndex(lastName.startIndex.successor())
let charFatherName = fatherName.substringToIndex(fatherName.startIndex.successor())

//can use hasPrefix for first leter
switch (charFirstName, charLastName, charFatherName) {
    case (let first, _, _) where first == "А" || first == "О" :
        println(firstName)
    case (_, _, let father) where father == "В" || father == "Д" :
        println("\(firstName) \(lastName)")
    case (_,let last, _) where last == "Е" || last == "З" :
        println(lastName)
    default: println("\(lastName) \(firstName) \(fatherName)")
}


//part4 field 
println()
var ship1 = [52,53,54]
var ship2 = [1]
var ship3 = [28,38,48,49]
let shoot = 52

let ship      = UnicodeScalar(128678)
let see       = UnicodeScalar(128309)
let shootShip = UnicodeScalar(128165)
let bomb      = UnicodeScalar(128163)

for i in 1...100 {
    if (contains(ship1, i) || contains(ship2, i) || contains(ship3, i)) && i != shoot {
        print("\(String(Character(ship)))")
    } else if i == shoot && (contains(ship1, i) || contains(ship2, i) || contains(ship3, i)) {
        print("\(String(Character(shootShip)))")
    } else if !(contains(ship1, shoot) || contains(ship2, shoot) || contains(ship3, shoot)) && shoot == i {
       print("\(String(Character(bomb)))")
    } else {
        print("\(String(Character(see)))")
    }
    if i % 10 == 0 {
        println()
    }
}

println()
switch shoot {
    case let shoot where ship1.count > 1 && contains(ship1, shoot) == true:
        println("Wounded ship1")
    case let shoot where contains(ship1, shoot) == true && ship1.count == 1 :
        println("Kill ship1")
    case let shoot where contains(ship2, shoot) == true && ship2.count > 1 :
        println("Wounded ship2")
    case let shoot where contains(ship2, shoot) == true && ship2.count == 1 :
        println("Kill ship2")
    case let shoot where contains(ship3, shoot) == true && ship3.count > 1 :
        println("Wounded ship3")
    case let shoot where contains(ship3, shoot) == true && ship3.count == 1 :
        println("Kill ship3")
    default : println("Miss")
}

