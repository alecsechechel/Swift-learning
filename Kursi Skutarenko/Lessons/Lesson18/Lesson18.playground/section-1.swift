// Наследования final - запрещает наследование
class Human {
    
    var firstName = ""
    var lastName = ""
    var fullName : String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}

class SmartHuman: Human {
    
}

class Student : SmartHuman {
    
    override func sayHello() -> String {
        return super.sayHello() + " my friend"
    }

}

class Kid: Human {
    
    var favoriteToy : String = "iMac"
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName : String {
        return firstName
    }
    
    override var firstName : String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName : String {
        didSet {
            println("new Value" + self.lastName)
        }
    }
    
}

let human = Human()
human.firstName = "Alex"
human.lastName = "Chechel"
human.fullName
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Mix"
student.sayHello()

let kid = Kid()
kid.firstName = "Kinder"
kid.lastName = "122"
kid.fullName
kid.favoriteToy

let array = [kid, student, human]
for value in array {
    println(value.sayHello())
}






