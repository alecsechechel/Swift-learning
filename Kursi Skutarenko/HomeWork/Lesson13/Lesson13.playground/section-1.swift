// Home work 13
//For structure
println("part1")
struct DateOfBirthday {
    var day : Int
    var month : Int
    var year : Int
}

struct Student {
    var firstName : String
    var lastName : String
    var birthday : String
    var middleNote : Double
}

let student1 = Student(firstName: "Oleksii", lastName: "Chechel", birthday: "22.11.1988", middleNote: 5.0)
let student2 = Student(firstName: "Sergii", lastName: "Petrov", birthday: "01.01.1995", middleNote: 4.5)
let student3 = Student(firstName: "Olga", lastName: "Ved", birthday: "13.05.1985", middleNote: 4.7)
let student4 = Student(firstName: "Dima", lastName: "Chechel", birthday: "22.11.1988", middleNote: 3.0)

var journal = [student1, student2, student3, student4]

println("part2")
func printJournal(journal:[Student]){
    for (index, student) in enumerate(journal) {
        println("\(index + 1). \(student.lastName) \(student.firstName) middle note \(student.middleNote)")
    }
}
printJournal(journal)

println("part3")
journal = journal.sorted({$0.middleNote > $1.middleNote})
printJournal(journal)

println("part4")
journal = journal.sorted({
   
    if $0.lastName == $1.lastName {
        return $0.firstName < $1.firstName
    } else {
        return $0.lastName < $1.lastName
    }
})
printJournal(journal)

println("part5")
var newJournal = journal
for (index, student) in enumerate(newJournal) {
    newJournal[index].middleNote = student.middleNote + student.middleNote*0.5
}
printJournal(journal)
println("newJournal")
printJournal(newJournal)

//For classes
println("part1")
class StudentClass {
    var firstName : String
    var lastName : String
    var birthday : String
    var middleNote : Double
    
    init(firstName:String, lastName:String, birthday: String, middleNote: Double) {
        self.firstName  = firstName
        self.lastName   = lastName
        self.birthday   = birthday
        self.middleNote = middleNote
    }
}

let newStudent1 = StudentClass(firstName: "Oleksii", lastName: "Chechel", birthday: "22.11.1988", middleNote: 5.0)
let newStudent2 = StudentClass(firstName: "Sergii", lastName: "Petrov", birthday: "01.01.1995", middleNote: 4.5)
let newStudent3 = StudentClass(firstName: "Olga", lastName: "Ved", birthday: "13.05.1985", middleNote: 4.7)
let newStudent4 = StudentClass(firstName: "Dima", lastName: "Chechel", birthday: "22.11.1988", middleNote: 3.0)

var journalClass = [newStudent1, newStudent2, newStudent3, newStudent4]

println("part2")
func printJournal(journal:[StudentClass]){
    for (index, student) in enumerate(journal) {
        println("\(index + 1). \(student.lastName) \(student.firstName) middle note \(student.middleNote)")
    }
}
printJournal(journalClass)

println("part3")
journalClass = journalClass.sorted({$0.middleNote > $1.middleNote})
printJournal(journalClass)

println("part4")
journalClass = journalClass.sorted({
    
    if $0.lastName == $1.lastName {
        return $0.firstName < $1.firstName
    } else {
        return $0.lastName < $1.lastName
    }
})
printJournal(journalClass)

println("part5")
var newJournalClass = journalClass
for (index, student) in enumerate(newJournalClass) {
    newJournalClass[index].middleNote = student.middleNote + student.middleNote*0.5
}
printJournal(journalClass)
println("newJournal")
printJournal(newJournalClass)







