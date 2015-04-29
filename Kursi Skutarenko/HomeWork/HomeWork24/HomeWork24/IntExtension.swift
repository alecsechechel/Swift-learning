//
//  IntExtension.swift
//  HomeWork24
//
//  Created by Alex on 29.04.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//
//1. Создайте расширение для Int с пропертисами isNegative, isPositive, bool
//2. Добавьте проперти, которое возвращает количество символов в числе
//3. Добавьте сабскрипт, который возвращает символ числа по индексу:
//4.Профи могут определить и сеттер :)
//
//let a = 8245
//
//a[1] // 4
//a[3] // 8



import Foundation

extension Int {
    
    var isNegative : Bool {
        return self<0
    }
    
    var isPositive : Bool {
        return !isNegative
    }
    
    var bool : Bool {
        return !(self == 0)
    }
    
    var countNumber : Int {
        let str = String(self)
        return count(str)
    }
    
    subscript(number:Int) -> Int? {
        get {
            let array = Array(String(self)).reverse()
            var result : Int?
            if array.count - 1 >= number && number >= 0 {
                result = String(array[number]).toInt()
            }
            return result
        }
        set {
            var array = Array(String(self)).reverse()
            if array.count - 1 >= number && number >= 0 {
                let char: Character = String(newValue!)[0]
                array[number] = char
                array = array.reverse()
                if let result = String(array).toInt() {
                    self = result
                }
            }
        }
    }

    
    
    
}

struct TestInt {
    var negative = -10
    var positive = 10
    var zero = 0
    var one = 1
    var ten = 10
    var million = 1_000_000
    
    var int8245 = 8245
}
