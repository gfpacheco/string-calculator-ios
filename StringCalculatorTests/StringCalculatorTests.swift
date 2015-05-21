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
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddEmptyString() {
        let stringCalculatorBrain = StringCalculatorBrain()
        XCTAssertEqual(stringCalculatorBrain.add(""), 0, "it should return 0 when add an empty string")
    }
    
}
