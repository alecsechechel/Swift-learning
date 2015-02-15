// Home Work Dictionary
import UIKit

//part 1
var studentsJournal = ["Bereza Vlad" : 5, "Petrenko Maksim" : 3, "Ved Lena" : 4, "Bondar Natasha" : 5, "Androsenko Andrey" : 2]
var sumNotes        = 0
var midNote         = 0.0

//retake student
studentsJournal["Androsenko Andrey"] = 4
studentsJournal.updateValue(4, forKey: "Petrenko Maksim")

//new student
studentsJournal["Kizim Roman"] = 5
studentsJournal["Kruglak Andrey"] = 3

//gone student
studentsJournal["Bereza Vlad"] = nil
studentsJournal.removeValueForKey("Ved Lena")

for (_, value) in studentsJournal {
    sumNotes += value
}
midNote = Double(sumNotes) / Double(studentsJournal.count)

println(NSString(format:"Collective note is \(sumNotes). Average note is grup is %.1f \n", midNote))

//part 2
let dictMonths   = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

for (key, value) in dictMonths {
    println("In \(key) - \(value) days")
}
println()
for key in dictMonths.keys {
    println("In \(key) - \(dictMonths[key]!) days")
}
println()

//part 3
let str       = "abcdefgh"
let countCell = 8
var dict      = [String:Bool]()
for char in str {
    let index = NSString(string : str).rangeOfString(String(char)).location + 1
    for i in 1...countCell {
        let key = String(char) + String(i)
        dict[key] = (index % 2) != (i % 2)
    }
}

for (key, value) in dict {
    println("\(key) - \(value)")
}
