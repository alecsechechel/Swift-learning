// Lesson6  string
import UIKit

// Part 1
// a ?? b  =  a != nil ? a! : b

let str1 = "10"
let str2 = "1ww"
let str3 = "8"
let str4 = "one"
let str5 = "17"

var newIntStr1 = str1.toInt() ?? 0
var newIntStr2 = str2.toInt() ?? 0
var newIntStr3 = str3.toInt() ?? 0
var newIntStr4 = str4.toInt() ?? 0
var newIntStr5 = str5.toInt() ?? 0

var sumStr = 0
sumStr = newIntStr1 + newIntStr2 + newIntStr3 + newIntStr4 + newIntStr5

let newStr1 = (str1.toInt() == nil) ? "nil" : str1
let newStr2 = (str2.toInt() == nil) ? "nil" : str2
let newStr3 = (str3.toInt() == nil) ? "nil" : str3
let newStr4 = (str4.toInt() == nil) ? "nil" : str4
let newStr5 = (str5.toInt() == nil) ? "nil" : str5

let plus  = " + "
let equal = " = "

//Interpolation
println("\(newStr1) + \(newStr2) + \(newStr3) + \(newStr4) + \(newStr5) = \(sumStr)")

//Concantenete
let strConcantenet : String = newStr1 + plus + newStr2 + plus + newStr3 + plus + newStr4 + plus + newStr5 + equal + String(sumStr)
println(strConcantenet)


//Part 2
/*
Show all symbol
*/
//var h1 = 0x1f000
//for i in 0...2000 {
//    let sym = UnicodeScalar(h1)
//    print("\(h1) - \(String(Character(sym)))")
//    h1++
//}

let one   = UnicodeScalar(128640)
let two   = UnicodeScalar(128690)
let three = UnicodeScalar(128037)
let four  = UnicodeScalar(127886)
let five  = UnicodeScalar(127759)

println( "\(String(Character(one))) \(String(Character(two))) \(String(Character(three))) \(String(Character(four))) \(String(Character(five)))")

var oneWithSymbol = String(Character(one)) + "\u{307}\u{20dd}"
countElements(oneWithSymbol)
(oneWithSymbol as NSString).length

//Part 3
//First method
let chooseChar : Character = "C"
let alphabet               = "abcdefghijklmnopqrstuvwxyz"
var charIsPresent          = NSString(string: alphabet).containsString(String(chooseChar))
var number                 = 0

if charIsPresent {
    for character in alphabet {
        ++number
        if character == chooseChar {
            println("Number char - \(chooseChar) in alphabet is \(number)")
            charIsPresent = true
            break
        }
    }
    let index = NSString(string : alphabet).rangeOfString(String(chooseChar)).location + 1
    println("Number char - \(chooseChar) in alphabet is \(index)")
} else {
    println("Char is not found!!!")
}













