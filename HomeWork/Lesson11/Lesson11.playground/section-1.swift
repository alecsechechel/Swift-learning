// Home work 11
import Foundation
//MARK: Part1
func part1 (f:()->()) {
    var sum = 0
    for i in 1...10 {
        sum += i
        println(i)
    }
    f()
}

part1{
   println("clousure")
}

//MARK: Part2
let array = [1,5,3,0,90,23,4,87,6,5]
let sortArray = sorted(array, >)

//MARK: Part3
func part3(array: [Int], f: (Int, Int?) -> Bool) -> Int {
    
    var optional : Int? = array[0]
    for value in array {
        if f(value, optional) {
            optional = value
        }
    }
    return optional ?? 0
}

let max = part3(array){$0 > $1}
let min = part3(array){$0 < $1}
max
min

//MARK: Part4
//func makeSubString(arrayString:[String], array:[String], clousure:(Int,Int) -> Bool) -> [String] {
//    var newArray : [String]
//    for (index, value) in arrayString {
//        let i = find(array, String(char))
//        if let i = find(array, String(char)) {
//            newArray += String(char)
//        }
//    }
//    return sorted(newArray)
//}
let spaceSet = NSCharacterSet.whitespaceCharacterSet()
var string = "4. Соз"//дайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов сортировки отсортируйте строку так, чтобы вначале шли глассные в алфовитном порядке, потом согдасные, потом цифры, а потом символы"
string = string.stringByReplacingOccurrencesOfString(" ", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)

var arrayString = Array(string.lowercaseString)
let vowel = ["а","о","э","и","у","ы","е","ё","ю","я"]
let consonants = ["б", "в", "г", "д", "ж", "з", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "ш", "х", "ч", "й"]
let digits = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
let punctuation = [",", ".", "?", "!", " "]

var allSymbols = sorted(vowel, <)
allSymbols += sorted(consonants, <)
allSymbols += sorted(digits, <)
allSymbols += sorted(punctuation, <)
    
var reversed = sorted(arrayString, { (s1: Character, s2: Character) -> Bool in
//    var i = 0; var j = 0
//    if find(allSymbols, String(s1)) != nil {
//        i = find(allSymbols, String(s1))!
//        println("\(i), \(s1)")
//    }
//    if find(allSymbols, String(s2)) != nil {
//        j = find(allSymbols, String(s2))!
//        println("\(j), \(s2)")
//    }
//    if i <= j {
//        return s1 < s2
//    } else {
//        return s1 > s2
//    }
    println("s1 - \(s1), s2 = \(s2)")
    return s1 > s2
    
})
allSymbols[33]
println(allSymbols)
//reversed = sorted(arrayString)
reversed

//let newString = makeSubString(string, vowel)
//
//sorted(arrayString, <)
//println(sorted(arrayString, <))
////arratString.count









