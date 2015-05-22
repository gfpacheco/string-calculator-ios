//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Guilherme Pacheco on 5/21/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

import XCTest

class StringCalculatorTests: XCTestCase {

    var stringCalculator: StringCalculatorBrain!
    
    override func setUp() {
        stringCalculator = StringCalculatorBrain()
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAddEmptyString() {
        XCTAssertEqual(stringCalculator.add(""), 0, "it should return 0 when add an empty string")
    }

    func testAddStringWithOneNumber() {
        XCTAssertEqual(stringCalculator.add("1"), 1, "it should return the actual number when add a string with one number")
    }
}
