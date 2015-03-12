// Lesson6 methods

struct Room {
    let width : Int
    let length : Int
}

struct Point {
    let x : Int
    let y : Int
    mutating func moveByX(var x: Int, andY y: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Direction {
    case Left
    case Right
    case Up
    case Bottom
}

class Human {
    class var name : Character {
        return "🏃"
    }
    class var car : Character {
        return "🚗"
    }
    class var garage : Character {
        return "🏡"
    }
    
    var position : Point {
        didSet {
            if position.x >= room.width || position.x <= 1 {
                position = oldValue
            }
            if position.y >= room.length || position.y <= 1 {
                position = oldValue
            }
        }
    }
    var car : Point {
        didSet {
            if car.x >= room.width || car.x <= 1 {
                car = oldValue
            }
            if car.y >= room.length || car.y <= 1 {
                car = oldValue
            }
        }
        
    }
    var garage : Point {
        didSet {
            if garage.x >= room.width || garage.x <= 1 {
                garage = oldValue
            }
            if garage.y >= room.length || garage.y <= 1 {
                garage = oldValue
            }
        }
    }
    var room : Room

    init (position: Point, inRoom room : Room, withCar car:Point, andGarage garage:Point ) {
        self.position = position
        self.room = room
        self.car = car
        self.garage = garage
    }
    
    func move(direction : Direction, var position : Point) -> Point {
        switch direction {
        case .Left : position.moveByX(-1, andY: 0)
        case .Right : position.moveByX(1, andY: 0)
        case .Up : position.moveByX(0, andY: -1)
        case .Bottom : position.moveByX(0, andY: 1)
        default: break
        }
        
        return position
    }
    
    func moveHuman(direction:Direction) {
        var oldCarPosition = car
        var oldPosition = position
        position = move(direction, position: position)
        if position.x == car.x && position.y == car.y {
            car = move(direction, position: car)
            if oldCarPosition.x == car.x && oldCarPosition.y == car.y {
                position = oldPosition
            } else if car.x == garage.x && car.y == garage.y {
                println("You are win!!!");
            }
        }
        
    }
    
    func showMe() {
        for i in 1...room.width {
            println()
            for j in 1...room.length {
                switch (i,j) {
                case (let y, let x) where  x == position.x && y == position.y:
                    print(" \(Human.name)")
                case (let y, let x) where x == garage.x && y == garage.y:
                    print(" \(Human.garage)")
                case (let y, let x) where x == car.x && y == car.y:
                    print(" \(Human.car)")
                case (let y, let x) where x == 1 || y == 1:
                    print(" ◼️")
                case (let y, let x) where x == room.width || y == room.length :
                    print(" ◼️")
                default : print(" ◻️")
                }
            }
            println()
        }
        println()
    }
}

let man = Human(position: Point(x: 3, y: 4), inRoom: Room(width: 6, length: 6), withCar : Point(x: 3, y: 3), andGarage : Point(x: 5, y: 2))
man.showMe()
man.moveHuman(.Up)
man.showMe()
man.moveHuman(.Left)
man.showMe()
man.moveHuman(.Up)
man.showMe()
man.moveHuman(.Right)
man.showMe()
man.moveHuman(.Right)
man.showMe()



