//
//  StringCalculatorKataTests.swift
//  StringCalculatorKataTests
//
//  Created by Ian Wells on 22/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import XCTest
@testable import StringCalculatorKata

class StringCalculatorKataTests: XCTestCase {
    
    let stringCalculator = StringCalculator();
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGivenEmptyStringAsInputShouldReturnZero() {
        let result = try! stringCalculator.calculate(input: "")
        XCTAssertEqual(result, 0)
    }
    
    func testGivenSingleNumberAsInputShouldReturnStringValue() {
        let result = try! stringCalculator.calculate(input: "7")
        XCTAssertEqual(result, 7)
    }
    
    func testGivenTwoNumbersCommaDelimitedShouldReturnSum() {
        let result = try! stringCalculator.calculate(input: "7,4")
        XCTAssertEqual(result, 11)
    }
    
    func testGivenTwoNumbersNewLineDelimitedShouldReturnSum() {
        let result = try! stringCalculator.calculate(input: "5\n4")
        XCTAssertEqual(result, 9)
    }
    
    func testGivenThreeNumbersDelimitedEitherWayShouldReturnSum() {
        let result = try! stringCalculator.calculate(input: "1,4\n6")
        XCTAssertEqual(result, 11)
    }
    
    func testGivenNegativeNumbersAsInputShouldThrowError() {
        XCTAssertThrowsError( try stringCalculator.calculate(input: "-7"))
    }
    
    func testGivenNumberGreaterThanOneThousandThenShouldBeIgnore() {
        let result = try! stringCalculator.calculate(input: "1007")
        XCTAssertEqual(result, 0)
    }
}
