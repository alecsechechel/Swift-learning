// Lessons 14 Properties
//1.Stored properties
import Foundation

struct Student {
    
    var firstName : String {
        
        willSet {
            println("will set "  + newValue + " instead of " + firstName)
        }
        didSet {
            println("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalizedString
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalizedString
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        set {
            println("Full name wants to be set to " + newValue)
            
            let words = newValue.componentsSeparatedByString(" ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var student = Student(firstName: "Alex", lastName: "Chechel")



student.firstName
student.lastName
student.fullName


student.firstName = "bOB"

student.firstName
student.lastName
student.fullName = "IVAn ivanoW"
student.fullName
student.firstName
student.lastName


