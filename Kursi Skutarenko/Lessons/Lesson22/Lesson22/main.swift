//
//  main.swift
//  Lesson22
//
//  Created by Alex on 01.04.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//


//weak всегда var и опциональный
//weak с опциональными unowned с stored
//clousure держут обекты

import Foundation

println("Hello, World!")

var playground = true

class Student {
    
    unowned let teacher : Teacher
    
    deinit {
        println("goodby student")
    }
    
    init(teacher: Teacher) {
        self.teacher = teacher;
    }
}

class Teacher {
    
    var student : Student!
    
    var test :(() -> ())?
    
    lazy var test2 : (Bool)->() = {
        [unowned self]
        (a: Bool) in
        println(self.student)
    }
    
    init() {
        self.student = Student(teacher: self)
    }
    
    deinit {
        println("goodby teacher")
    }
}

var closure3 : () -> ()?

if playground {
   
//    var t : Teacher?
    var teacher = Teacher()
    /*
    if playground {
        var student = Student(teacher: teacher)
        teacher.student = student
    }

    closure3 = {
        [unowned teacher] in println(teacher)
    }
*/
    teacher.test = {
        [unowned teacher] in
        println(teacher)
    }
    println("exit palyground")
}



//клоужеры

var x = 10
var y = 20

class Human {
    var name = "a"
}

var h = Human()
var closure : () -> () = {
    [x] in
    println("\(x) \(y)")
}

var closure2 : (Int) -> Int = {[x,y] (a: Int) -> Int in
    println("\(x) \(y) \(h.name)")
    return a
}

closure2(1)

x = 30
y = 40

h.name = "b"
closure2(1)












println("end")














