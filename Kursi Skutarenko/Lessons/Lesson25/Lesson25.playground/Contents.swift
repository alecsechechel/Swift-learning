//: Lesson25 Битовые операторы

extension UInt8 {
//extension  Int8 {
    func binary() -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

//var a: UInt8 = 57

//a.binary()
//
//(5 as UInt8).binary()
//
//a = a + 0b0000101
//
//(4 as UInt8).binary()
//a = a - 0b0000100
//
//a = a &* 8 // битовый сдвиг
//a = a << 3
//
//a = 0b11111111
//a = a &+ 1


// sighn
//var a : Int8 = 57
//a.binary()
//a = 0b01111111
//a = a &+ 1
//a = -1
//a.binary()
//a = 0
//a.binary()
//
//a = 0b00100001
//a = a << 2

// применение

var a : UInt8 = 0b00110011
var b : UInt8 = 0b11100001

a.binary()
b.binary()

(a | b).binary()
( a & b).binary()
(a ^ b).binary()
(~a).binary()

b = 0b000010000 // проверка бита
a.binary()
b.binary()
( a & b).binary()
( a & b)

b = 0b000000100 // установка бита
a.binary()
b.binary()
(a | b).binary()

b = 0b000000010
a.binary()
b.binary()
(a ^ b).binary()

b = 0b000010000 // сброс бита
a.binary()
b.binary()
(a & ~b).binary()

enum CheckList : UInt8 {
    case Bread =   0b00000001
    case Chicken = 0b00000010
    case Apple =   0b00000100
    case Pears   = 0b00001000
}

let checkList : UInt8 = 0b00001001

let bread = checkList & CheckList.Bread.rawValue
let chicken = checkList & CheckList.Chicken.rawValue















