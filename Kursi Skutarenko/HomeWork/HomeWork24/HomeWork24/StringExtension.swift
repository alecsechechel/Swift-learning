//
//  StringExtension.swift
//  HomeWork24
//
//  Created by Alex on 29.04.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//
//4. Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его
//5. Добавить стрингу метод truncate, чтобы отрезал лишние символы и , если таковые были, заменял их на троеточие:

import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[advance(self.startIndex, i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        get {
            return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
        }
        set {
            let range = Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex))
            let oldStr = substringWithRange(range)
            self = self.stringByReplacingCharactersInRange(range, withString: newValue)
        }
    }
    
    mutating func truncate(value: Int) {
        if count(self) > value {
            self = self[0..<value] + "..."
        }
    }
}
