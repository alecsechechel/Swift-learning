// Lesson6  string
import UIKit

// Part 1
// a ?? b  =  a != nil ? a! : b

let str1 = "10"
let str2 = "1ww"
let str3 = "8"
let str4 = "one"
let str5 = "17"

var newIntStr1 = Int(str1) ?? 0
var newIntStr2 = Int(str2) ?? 0
var newIntStr3 = Int(str3) ?? 0
var newIntStr4 = Int(str4) ?? 0
var newIntStr5 = Int(str5) ?? 0

var sumStr = 0
sumStr = newIntStr1 + newIntStr2 + newIntStr3 + newIntStr4 + newIntStr5

let newStr1 = (Int(str1) == nil) ? "nil" : str1
let newStr2 = (Int(str2) == nil) ? "nil" : str2
let newStr3 = (Int(str3) == nil) ? "nil" : str3
let newStr4 = (Int(str4) == nil) ? "nil" : str4
let newStr5 = (Int(str5) == nil) ? "nil" : str5

let plus  = " + "
let equal = " = "

//Interpolation
print("\(newStr1) + \(newStr2) + \(newStr3) + \(newStr4) + \(newStr5) = \(sumStr)")

//Concantenete
let strConcantenet = newStr1 + plus + newStr2 + plus + newStr3 + plus + newStr4 + plus + newStr5 + equal + String(sumStr)
print(strConcantenet)

//Part 2
/*
Show all symbol
*/
var h1 = 0x1f000
for i in 0...2000 {
    let sym = UnicodeScalar(h1)
    print("\(h1) - \(String(Character(sym)))")
    h1 += 1
}

let one   = UnicodeScalar(127019)
let two   = UnicodeScalar(128690)
let three = UnicodeScalar(128037)
let four  = UnicodeScalar(127886)
let five  = UnicodeScalar(127759)

print( "\(String(Character(one))) \(String(Character(two))) \(String(Character(three))) \(String(Character(four))) \(String(Character(five)))")

var oneWithSymbol = String(Character(one)) + "\u{307}\u{20dd}"
oneWithSymbol.characters.count
(oneWithSymbol as NSString).length

//Part 3
//First method
let chooseChar: Character = "C"
let alphabet = "abCdefghijklmnopqrstuvwxyz"
var charIsPresent = NSString(string: alphabet).containsString(String(chooseChar))
var number = 0

if charIsPresent {
    for (index, character) in alphabet.characters.enumerate() {
        if character == chooseChar {
            print("Number char - \(chooseChar) in alphabet is \(index + 1)")
            break
        }
    }
} else {
    print("Char is not found!!!")
}













