//
//  HomeWork24Tests.swift
//  HomeWork24Tests
//
//  Created by Alex on 29.04.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//

import UIKit
import XCTest

class HomeWork24Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNegative() {
        let int = TestInt()
        XCTAssert(int.negative.isNegative, "Negative")
        XCTAssertFalse(int.positive.isNegative, "Positive")
        XCTAssertFalse(int.zero.isNegative, "Zero")
    }
    
    func testPositive() {
        let int = TestInt()
        XCTAssertFalse(int.negative.isPositive, "Negative")
        XCTAssert(int.positive.isPositive, "Positive")
        XCTAssert(int.zero.isPositive, "Zero")
    }
    
    func testBoll() {
        let int = TestInt()
        XCTAssert(int.negative.bool, "Negative")
        XCTAssert(int.positive.bool, "Positive")
        XCTAssertFalse(int.zero.bool, "Zero")

    }
    
    func testCount() {
        let int = TestInt()
        XCTAssertEqual(int.one.countNumber, 1)
        XCTAssertEqual(int.ten.countNumber, 2)
        XCTAssertEqual(int.million.countNumber, 7)
    }
    
    func testSubscript() {
        var int = TestInt()
        //get
        XCTAssertNil(int.int8245[-1], "Nil")
        XCTAssertNil(int.int8245[10], "Nil")
        XCTAssertEqual(int.int8245[1]!, 4)
        XCTAssertEqual(int.int8245[3]!, 8)
        //set
        int.int8245[1] = 1
        int.int8245[5] = 5
        XCTAssertEqual(int.int8245, 8215)
        
    }
    
    func testStringRange() {
        var abcde = "abcde"
        //get
        XCTAssertEqual(abcde[0], "a")
        XCTAssertEqual(abcde[0...1], "ab")
        XCTAssertEqual(abcde[2..<4], "cd")
        //set
        abcde[2..<4] = "abc"
        abcde[0..<1] = "x"
        XCTAssertEqual(abcde, "xbabce")
        
    }
    
    func testStringTrunc() {
        var str = "Hi hi hi"
        str.truncate(4)
        XCTAssertEqual(str, "Hi h...")
        str = "Hi hi hi"
        str.truncate(10)
        XCTAssertEqual(str, "Hi hi hi")
    }
    
}
