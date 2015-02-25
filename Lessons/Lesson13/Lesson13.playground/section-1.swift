// Lesson13 Class

//let student1 = (name: "Alex", age: 20)
//let student2 = (name: "Bob", age: 22)
//let student3 = (name: "Sam", age: 23)

class StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No Name"
        age = 20
    }
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

let stClass = StudentClass(name: "Bob", age: 18)

stClass.name = "Alex"
stClass.age = 20

struct StudentStruct {
    
    var name : String
    var age : Int
    
}

func addOneYear(student: StudentClass) {
    student.age++
}

func addOneYear(inout student: StudentStruct) {
    student.age++

}

var stStruct1 = StudentStruct(name: "Sam", age: 24)

stStruct1.name = "Alex"

var stStruct2 = stStruct1
stStruct1.name
stStruct2.name = "Alexandr"
stStruct1.name

var stClass2 = stClass
stClass2.age = 100
stClass.age

addOneYear(&stStruct1)
stStruct1.age

addOneYear(stClass2)
stClass.age

var arrayStruct = [stStruct1]
arrayStruct[0]
arrayStruct[0].age = 50
stStruct1.age


var arrayClasses = [stClass2]
arrayClasses[0]
arrayClasses[0].age = 10
stClass2.age




















