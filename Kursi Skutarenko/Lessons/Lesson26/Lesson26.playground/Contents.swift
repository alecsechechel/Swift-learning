//: Перегрузка операторов

struct Point {
    var x : Int
    var y : Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

func += (inout a: Point, b: Point) {
    a = a + b
}

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

prefix func ++ (inout a: Point) -> Point {
    a.x++
    a.y++
    return a
}

postfix func ++ (inout a: Point) -> Point {
    let b = a
    ++a
    return b
}

infix operator ** {associativity left precedence 145}

func ** (a: Point, b: Point) -> Point {
    return Point(x: 2 * (a.x + b.x), y: 2 * (a.y + b.y))
}

//%%%
infix operator %%% {}

func %%% (inout a: Point, b: Point) -> Point {
    a.x += b.y
    a.y -= b.x
    return a
}

p1 %%% p2

// Приоритеты и асиацивность

var i = 5

let p3 = p1 + p2
let p4 = p1 * p2

p1++
p1
++p1

p1 += p2
p1 == p2

i = 7

p1.x = 7
if (p1++).x == 8 {
    println("8")
} else {
    println("not 8")
}

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

p1 ** p2 ** p1

p1 + p2 ** p2 ** p1

var s = "Hello, World!"
import Foundation

func -= (inout s1: String, s2: String) {
    let set = NSCharacterSet(charactersInString: s2)
    let components = s1.componentsSeparatedByString(set)
}
//s -= "l"

s







