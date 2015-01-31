// Lesson 6 string 21 bit describe charecter UTF-16
import Foundation

var str  = String()
var str1 = ""

var a    = 5
var b    = a

str.isEmpty

let char1 : Character = "x"

for c in "Hello world" {
    println(c)
}
str.append(char1)

//(str as NSString).length

var fun = "\u{E9}"
var o1 : Character = "o\u{307}\u{20dd}"
var heart = "\u{1F493}"
countElements(str)


let characterString: String = "\u{1F493}"

var numbers: [Int] = Array<Int>()
for character in characterString.utf8 {
    let stringSegment: String = "\(character)"
    let anInt: Int = stringSegment.toInt()!
    numbers.append(anInt)
}


Character(UnicodeScalar(97))
Character(UnicodeScalar(122))

//numbers
//
//for character in characterString.utf8 {
//    // for example A will converted to 65
//    var utf8Value = character
//    println(utf8Value)
//}

