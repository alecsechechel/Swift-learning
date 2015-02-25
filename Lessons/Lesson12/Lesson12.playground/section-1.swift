// Lesson 12 Enum

enum Direction : String {
    case Left = "Left"
    case Right = "Right"
}

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
}

var action = Action.Run(meters: 20, speed: 15)
//action = .Stop
//action = Action.Walk(meters: 10)
action = .Turn(direction: .Left)

var direction = Direction(rawValue: "Right")!
action = .Turn(direction: direction)

switch action {
case .Stop: println("Stop")
case .Walk(let meters) where meters < 100:
    println("walk \(meters) metest")
case .Run(let m, let s):
    println("run \(m) with \(s)")
case .Turn(let dir) where dir == .Left: println("Turn Left")
case .Turn(let dir) where dir == .Right: println("Turn Right")
default:break
}

println(Direction.Left.rawValue)
