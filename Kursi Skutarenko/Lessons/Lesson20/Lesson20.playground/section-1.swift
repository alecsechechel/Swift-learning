// Lessons 20 Initalizations

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
}

class Student: Human {
    var firstName : String
    var lastName : String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        
        self.weight = 50
        test()
    }
    
    override convenience init(weight: Int, age: Int) {
        self.init(firstName: "")
        self.weight = weight
        self.age = age
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
    }
}

class Doctor : Student {
    
    var fieldOfStudy : String = ""
    
//    init(fieldOfStudy: String) {
//        self.fieldOfStudy = fieldOfStudy
//        super.init(firstName: "Doctor", lastName: "House")
//    }
    convenience init(fieldOfStudy: String) {
        self.init(firstName: "Doctor", lastName: "House")
        self.fieldOfStudy = fieldOfStudy
    }
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Health"
        super.init(firstName: firstName, lastName: lastName)
    }
}












