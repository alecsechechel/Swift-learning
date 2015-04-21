// Lesson 21 Initialization 21
import Foundation

class Human {
    var weight : Int
    var age : Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight:0)
    }
    
    func test(){}
    
    deinit {
        println("Human deinit")
        
    }
}

enum Color : Int {
    case Black
    case White
    
    init?(value: Int) { //return nil when wrong
        switch value {
        case 0: self = Black
        case 1: self = White
        default: return nil
        }
    }
}
let a = Color(value: -1)
let b = Color(rawValue: 1)

struct Size {
    var width : Int
    var height : Int
    
    init?(width: Int, height: Int) {
        self.width = width
        if height < 0 {
            return nil
        }
        self.height = height
    }
    
    
}

class Friend : Human {
    var name : String!
    
    
    let skin : Color = {
        let random = Int(arc4random_uniform(2))
        return Color(value: random)!
        }()

    
    init?(name: String) {
        self.name = name
        let random = Int(arc4random_uniform(2))
        let color = Color(value: random)!
        self.skin = color
        super.init(weight: 0, age: 0)
        if name.isEmpty {
            return nil
        }
    }
    
    init() {
        self.name = "Hi"
        
//        skin = randomColor()

        super.init(weight: 0, age: 0)
    }
    
    deinit {
        println("Friends deinit")
        
    }
    
}

let f = Friend(name: "a")
f?.name

class BestFriend: Friend {
    
    override init(name: String) {
        if name.isEmpty {
            super.init()
        } else {
            super.init(name: name)
        }
    }
    
//    required init() {
//        super.init()
//    }
    
    deinit {
        println("BestFriends deinit")
        
    }
}

let b1 = BestFriend(name: "")

let f1 = Friend(name: "a")
f1!.skin.rawValue

struct Test {
    var bestFriend : BestFriend? = BestFriend(name: "")
}

var test : Test? = Test()

test!.bestFriend = nil















