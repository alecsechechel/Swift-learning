// Playground - noun: a place where people can play

let MaxNameLength = 20

class Human {
    
    var name : String {
        didSet {
            if countElements(name) > MaxNameLength {
                name = oldValue
            }
        }
    }
    
 // всегда var по умолчаню nil
    lazy var storyOfMyLife = "This is a story of mt entire life ..."
    class var maxAge : Int {
        return 100
    }
    
    var age  : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct Cat {
    
    var name : String {
        didSet {
            if countElements(name) > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20
    static var totalCats = 0
    
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    init(name:String, age: Int){
        self.name = name
        self.age = age
        
        Cat.totalCats++
    }
}

enum Direction {
    static let enumDescription = "Description"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
    var isHorizontal : Bool {
        return !isVertical
    }
}

let human = Human(name: "Peter", age: 40)

let cat = Cat(name: "Whiten", age: 10)
let cat1 = Cat(name: "Whiten", age: 10)

Cat.totalCats
human.storyOfMyLife
human
human.age = 1000

