// Home Work 10
import Foundation

//part1
func apple() -> String {

    return String(Character(UnicodeScalar(127823)))
}

func pear() -> String {
    
    return String(Character(UnicodeScalar(127824)))
}

func cherry()-> String {
    
    return String(Character(UnicodeScalar(127826)))
}
println("In my garden grow \(apple()), \(pear()), \(cherry())\n")

//part2
func checkCell(#row: Int, #column: Character) -> String {
    let columns : [Character] = ["a", "b", "c", "d", "e", "f", "g", "h"]
    let index = find(columns, column)! + 1
    
    return (index + row) % 2 == 0 ? "Black" : "White"
}
let row = 2; let column : Character = "d"
println("Cell row \(row) and column \(column) is \(checkCell(row: row,column: column))\n")

//part3
func reversArray(#array:[Int]) -> [Int] {
    return reverse(array)
}
func reversArray(inSequance sequance: Int...) -> [Int] {
    return reversArray(array: sequance)
}
var array = [1, 5, 2, 9]
println(reversArray(array: array))
println(reversArray(inSequance: 1,4,5,9,1))
println()

//part4
func reversAndChangeArray(inout array : [Int]) {
    array = reverse(array)
}
reversAndChangeArray(&array)
println("New array is \(array)")

//part5
func numToString(#number: Int) -> String {
    var result = ""
    switch number {
        
    case 0: result = "zero"
    case 1: result = "one"
    case 2: result = "two"
    case 3: result = "three"
    case 4: result = "four"
    case 5: result = "five"
    case 6: result = "six"
    case 7: result = "seven"
    case 8: result = "eight"
    case 9: result = "nine"
        
    default: break
    }
   return result
}

func changeString(#string: String) -> String {
    var newString = ""
    
    for char in string.lowercaseString {
        switch char {
        case "а","о","э","и","у","ы","е","ё","ю","я"," ": newString += String(char).uppercaseString
        case "ж", "ш", "ч", "б", "в", "г", "д",	"з", "к", "л", "м",	"н", "п", "р", "с", "т", "ф", "х", "й": newString += String(char).lowercaseString
        case "0"..."9": newString += numToString(number: String(char).toInt()!)
        default : break
        }
    }
 return newString
}

changeString(string: "Привет свифт ты классный 2015!!!")

