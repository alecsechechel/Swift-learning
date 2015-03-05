// Home work 14 Properties(Stored and Computing)
import Foundation
import Darwin
import UIKit

struct DateOfBirhtday {
    var day : Int
    var month : Int
    var year : Int
}

struct Student {
    
    var firstName : String {
        
        willSet {
        }
        
        didSet {
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
    }
    
    var birthday : DateOfBirhtday
    var age : Int {
        get {
            let date = NSDate()
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components(.CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay, fromDate: date)
            let maxYear = components.year - birthday.year
            var age = 0
            
            if birthday.month > components.month {
                age = maxYear - 1
            } else if birthday.month == components.month {
                age = birthday.day > components.day ? maxYear - 1 : maxYear
            } else {
                age = maxYear
            }
            return age
        }
    }
    var studyYears : Int {
        return age > 6 ? age - 6 : 0
    }
}


var student1 = Student(firstName: "Alex", lastName: "Chechel", birthday: DateOfBirhtday(day: 22, month: 11, year: 1988))




student1.firstName = "OlEksiI"
student1.lastName = "ChecheL"
student1.fullName
student1.age
student1.studyYears

//part2
struct Point {
    var x : Double
    var y : Double
}

struct Segment {
    var A : Point
    var B : Point
    var length : Double {
        get {
            return sqrt(pow((B.x - A.x),2) + pow((B.y - A.y),2))
        }
        set {
            let newLength = newValue - length
            let a = (newLength * abs(A.x - B.x)) / length
            let b = (newLength * abs(A.y - B.y)) / length
            B.x += B.x > A.x ? a : -a
            B.y += B.y > A.y ? b : -b
        }
    }
    var middlePoint : Point {
        get {
            let x = (A.x + B.x) / 2
            let y = (A.y + B.y) / 2
            return Point(x: x, y: y)
        }
        set {
            let deltaX = newValue.x - middlePoint.x
            let deltaY = newValue.y - middlePoint.y
            
            A = Point(x: A.x + deltaX, y: A.y + deltaY)
            B = Point(x: B.x + deltaX, y: B.y + deltaY)

        }
    }

}

//part3
var segment = Segment(A: Point(x: 5, y: 2), B: Point(x: 3, y: 4))
segment.length
segment.middlePoint
//part4
segment.middlePoint = Point(x: 3, y: 3)
segment.middlePoint
segment.A
segment.B
segment.length += 1
segment.B






