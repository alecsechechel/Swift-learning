// Lesson 15
//part1
struct DescribeFile {
    
    var path : String
    var name : String
    static let maxSize = 20
    var pathToFile : String {
        return path + "/" + name
    }
    var isHide : Bool
    var content : String {
        didSet {
            if countElements(self.content) > DescribeFile.maxSize {
                self.content = oldValue
            }
        }
    }
    
    init(name:String, path:String, content: String) {
        self.name = name
        self.path = path
        self.isHide = false
        self.content = content
    }
    
}

var file = DescribeFile(name: "info.txt", path: "desktop/develop", content: "Hello world!");
file.pathToFile
file.isHide

//part2
enum colorGamut : Int {
    
    static var gammaCount = 3
    
    case Red = 0xFF0000
    case Green = 0x00FF00
    case Blue = 0x0000FF
    
    static var firstColor: Int {
        return colorGamut.Red.rawValue
    }
}

var color = colorGamut.Red
colorGamut.firstColor

//part3
class Human {
    
    struct humanCount { static var humans = 0}
    
    class var ageRange : (min: Int, max: Int) {
        return (1,100)
    }
    class var nameRange : (min: Int, max: Int) {
        return (3,20)
    }
    class var minWeight : Double {
        return 2.5
    }
    class var minHeight : Double {
        return 30.5
    }
    
    var firstName : String {
        didSet {
            if !(Human.nameRange.min ... Human.nameRange.max ~= countElements(lastName)) {
                lastName = oldValue
            }
        }
    }
    var lastName : String {
        didSet {
            if !(Human.nameRange.min ... Human.nameRange.max ~= countElements(lastName)) {
                lastName = oldValue
            }
        }
    }
    var age : Int {
        didSet {
            if !(Human.ageRange.min ... Human.ageRange.max ~= age) {
                age = oldValue
            }
        }
    }
    var height : Double {
        didSet {
            if height < Human.minHeight {
                height = oldValue
            }
        }
    }
    var weight : Double {
        didSet {
            if weight < Human.minWeight {
                weight = oldValue
            }
        }
    }

    init (firstName: String, lastName:String, age: Int, height: Double, weight: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.height = height
        self.weight = weight
        humanCount.humans++
    }
}

let human1 = Human(firstName: "Alex", lastName: "Chechel", age:26, height: 182.5, weight: 74.5)
let human2 = Human(firstName: "Andrey", lastName: "Pavlov", age:30, height: 175.5, weight: 80.5)
human1.age = 126
human1.age
Human.humanCount.humans
















