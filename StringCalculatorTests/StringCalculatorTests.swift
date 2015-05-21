//
//  StringCalculatorTests.swift
//  StringCalculatorTests
//
//  Created by Guilherme Pacheco on 5/21/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

import XCTest

import StringCalculator

class StringCalculatorTests: XCTestCase {

    var stringCalculatorBrain: StringCalculatorBrain!
    
    override func setUp() {
        super.setUp()
        stringCalculatorBrain = StringCalculatorBrain()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddEmptyString() {
        XCTAssertEqual(stringCalculatorBrain.add(""), 0, "it should return 0 when add an empty string")
    }

    func testAddStringWithOneNumber() {
        XCTAssertEqual(stringCalculatorBrain.add("1"), 1, "it should return the actual number when add a string with one number")
    }

    func testAddStringWithTwoCommaSeparatedNumbers() {
        XCTAssertEqual(stringCalculatorBrain.add("1,2"), 3, "it should return the sum of the numbers when add a string with two comma separated numbers")
    }

    func testAddStringWithNCommaSeparatedNumbers() {
        XCTAssertEqual(stringCalculatorBrain.add("1,2,3,4"), 10, "it should return the sum of the numbers when add a string with n comma separated numbers")
    }

    func testAddStringWithNCommaOrNewLineSeparatedNumbers() {
        XCTAssertEqual(stringCalculatorBrain.add("1,2\n3,4"), 10, "it should return the sum of the numbers when add a string with n comma or new line separated numbers")
    }
    
}
