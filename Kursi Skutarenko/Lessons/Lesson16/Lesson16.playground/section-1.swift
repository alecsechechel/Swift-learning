// Lesson16 Methods
// mutating func change property!

struct Point {
    var x : Int
    var y : Int
    
//    mutating func moveByX(var x: Int, andY y: Int) { //first parametr local
//        self.x += x
//        self.y += y
//    }
    mutating func moveByX(var x: Int, andY y: Int) { //first parametr local
        self = Point(x: self.x + x, y: self.y + y)
    }

}

enum Color {
    
    static func numberOfElements() -> Int {
        self.print()
            return 2
    }
    
    case White
    case Black
    
    mutating func invert() ->Color {
        if self == White {
            self = Black
        } else {
            self = White
        }
        return self
    }
    
    func print() {
        if self == White {
            println("White")
        } else {
            println("Black")
        }
    }
    
    static func print() {
        println("enum")
//        if self == White {
//            println("White")
//        } else {
//            println("Black")
//        }
    }
}

var c = Color.White
c.print()
c.invert().print()
println(Color.numberOfElements())


func move(var #point: Point, byX x: Int, andY y: Int) -> Point {
    point.x += x
    point.y += y
    return point
}

var p = Point(x: 1, y: 1)
var p1 = Point(x: 2, y: 2)

p.moveByX(5, andY: 7)
p1
