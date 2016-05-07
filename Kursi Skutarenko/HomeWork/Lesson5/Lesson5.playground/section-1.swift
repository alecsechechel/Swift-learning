// Home Work 5

let myBirthday = (day: 22, month: 11, year: 1988)

let January    = (days: 31, number: 1)
let February   = (days: 28, number: 2)
let March      = (days: 31, number: 3)
let April      = (days: 30, number: 4)
let May        = (days: 31, number: 5)
let June       = (days: 30, number: 6)
let July       = (days: 31, number: 7)
let August     = (days: 31, number: 8)
let September  = (days: 30, number: 9)
let October    = (days: 31, number: 10)
let November   = (days: 30, number: 11)
let December   = (days: 31, number: 12)

var leapYear   = false
var countDay   = myBirthday.day

// 1 count seconds
// leap year ?

if (myBirthday.year % 4) == 0 {
    if (myBirthday.year % 100) == 0 {
        if (myBirthday.year % 400) == 0 {
           leapYear = true
        } else {
           leapYear = false
        }
    } else {
        leapYear = true
    }
}
if myBirthday.month > February.number {
    countDay += leapYear ? 1 : 0
}

countDay += ((January.number % myBirthday.month) != 0 && myBirthday.month > January.number) ? January.days : 0
countDay += ((February.number % myBirthday.month) != 0 && myBirthday.month > February.number) ? February.days : 0
countDay += ((March.number % myBirthday.month) != 0 && myBirthday.month > March.number) ? March.days : 0
countDay += ((April.number % myBirthday.month) != 0 && myBirthday.month > April.number) ? April.days : 0
countDay += ((May.number % myBirthday.month) != 0 && myBirthday.month > May.number) ? May.days : 0
countDay += ((June.number % myBirthday.month) != 0 && myBirthday.month > June.number) ? June.days : 0
countDay += ((July.number % myBirthday.month) != 0 && myBirthday.month > July.number) ? July.days : 0
countDay += ((August.number % myBirthday.month) != 0 && myBirthday.month > August.number) ? August.days : 0
countDay += ((September.number % myBirthday.month) != 0 && myBirthday.month > September.number) ? September.days : 0
countDay += ((October.number % myBirthday.month) != 0 && myBirthday.month > October.number) ? October.days : 0
countDay += ((November.number % myBirthday.month) != 0 && myBirthday.month > November.number) ? November.days : 0
countDay += ((December.number % myBirthday.month) != 0 && myBirthday.month > December.number) ? December.days : 0

if (December.number % myBirthday.month) != 0 && myBirthday.month > December.number {
    true
}

let countSeconds = countDay * 24 * 60 * 60
print("From 01.01.\(myBirthday.year) to my birth day is \(countSeconds) seconds")

//2 quarter
let quarter = (myBirthday.month % 4) + 1

//3
var varA = 2
var varB = -2
var varC = 21
var varD = 42
var varF = 91

let sum = ((50 + varA++ + --varB + ++varC + varF++ + varD--) / varB++ + varB) % varC++

//4
var point = (x : 1, y : 4)

if (point.x % 2) == 0 && (point.y % 2) == 0 {
    print("White")
} else if (point.x % 2) != 0 && (point.y % 2) != 0 {
    print("White")
} else {
    print("Black")
}


