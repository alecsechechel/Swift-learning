//: Перегрузка операторов
//1. -,=,pre-,pos-,/,/=,*=

struct Point {
    var x : Int
    var y : Int
}

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func - (a: Point, b: Point) -> Point {
    return Point(x: a.x - b.x, y: a.y - b.y)
}

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

func / (a: Point, b: Point) -> Point {
    return Point(x: a.x  / b.x, y: a.y / b.y)
}

func += (inout a: Point, b: Point) {
    a = a + b
}

func -= (inout a: Point, b: Point) {
    a = a - b
}

func *= (inout a: Point, b: Point) {
    a = a * b
}

func /= (inout a: Point, b: Point) {
    a = a / b
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

prefix func -- (inout a: Point) -> Point {
    a.x--
    a.y--
    return a
}

postfix func -- (inout a: Point) -> Point {
    let b = a
    --a
    return b
}


var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

p2 - p1             //-
p2 -= p1            // -=
p2 += p1
p2--
p2                  //postfix -
--p1                //prefix-
var p3 = p2 / p1    // /
p2 /= p3            // =/
p2 *= p3            // *=

//2.Создать структуру Rect, аналог CGRect, содержащую структуру Size и Point. Перегрузить операторы +, +=, -, -= для этой структуры.
struct Size {
    var width  : Int
    var height : Int
}

struct Rect {
    var origin : Point
    var size   : Size
    
    init() {
        origin = Point(x: 0, y: 0)
        size = Size(width: 0, height: 0)
    }
    
    init(origin:Point, size: Size) {
        self.origin = origin
        self.size = size
    }
}

func + (a: Rect, b: Rect) -> Rect {
    var newRect = a
    if a.size.height == b.size.height {
        newRect.size.width += b.size.width
    } else if a.size.height == b.size.width {
        newRect.size.width += b.size.height
    } else if a.size.width == b.size.height {
        newRect.size.height += b.size.width
    } else if a.size.width == b.size.width {
        newRect.size.height += b.size.height
    }
    return newRect
}

func - (a: Rect, b: Rect) -> Rect {
    var newRect = a
    if a.size.height == b.size.height {
        newRect.size.width = a.size.width > b.size.width ? a.size.width - b.size.width : b.size.width - a.size.width
    } else if a.size.height == b.size.width {
        newRect.size.width = a.size.width > b.size.width ? a.size.width - b.size.height : b.size.height - a.size.width
    } else if a.size.width == b.size.height {
        newRect.size.height = a.size.height > b.size.height ? a.size.height - b.size.width : b.size.width - a.size.height
    } else if a.size.width == b.size.width {
        newRect.size.height = a.size.height > b.size.height ? a.size.height - b.size.height : b.size.height - a.size.height
    }
    return newRect
}

func += (inout a: Rect, b: Rect) {
    a = a + b
}

func -= (inout a: Rect, b: Rect) {
    a = a - b
}

var rect1 = Rect(origin: Point(x: 2, y: 2), size: Size(width: 1, height: 3))
var rect2 = Rect(origin: Point(x: 4, y: 4), size: Size(width: 1, height: 2))

var rect3 = rect1 + rect2       // +
rect3 += rect1                  // +=
rect3 = rect2 - rect1           // -
rect3 -= rect1                  // -=


//3. Перегрузить оператор + и += для String, но второй аргумент должен быть Int

func + (str: String, num: Int) -> String {
    return str + String(num)
}

func += (inout str: String, num: Int) {
    str = str + String(num)
}

let num = 74
let str = "Years"

var how = str + num             // +
how += num                      // +=

//4. Создать свой оператор, который будет принимать 2 String и в первом аргументе, при совпадении буквы с вторым аргументом, менять совпадения на заглавные буквы
import Foundation

infix operator ===! {associativity left precedence 145}

func ===! (str1: String, str2: String) -> String {
    var newStr = ""
    for char in str1 {
        if NSString(string: str2).containsString(String(char)) {
            newStr += String(char).uppercaseString
        } else {
            newStr += String(char)
        }
    }
    return newStr
}

let string = "Hello world"
let str1 = "wld"
var str2 = string ===! str1

















