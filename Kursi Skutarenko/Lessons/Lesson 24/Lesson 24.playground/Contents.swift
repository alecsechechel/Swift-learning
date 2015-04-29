// Lesson 24 Extension

extension Int {
    var isEvent : Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return !isEvent
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd : EvenOrOdd {
        return isEvent ? .Even : .Odd
    }
    
    func pow(value: Int) -> Int {
        
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value: Int) {
        self = pow(value)
    }
    
    var binaryString : String {
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        return result
    }
}

extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
        }
    
    subscript(start: Int, length: Int) ->String {
        let start = advance(self.startIndex, start)

        let end = advance(start, length)
        let range = Range(start: start, end: end)
        return self[range]
    }
}

extension Int.EvenOrOdd {
    var string : String {
        switch self {
        case .Even: return "Even"
        case .Odd: return "Odd"
        }
    }
}

let a = 2

if a.isEvent {
    println("a")
}
a.binaryString


a.evenOrOdd.string
a.pow(5)
a

let s = "Hello, World"

s[0,5]
let start = s.startIndex
let end = advance(s.startIndex, 5)
let range = Range(start: start, end: end)
s[range]




