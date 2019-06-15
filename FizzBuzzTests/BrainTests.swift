//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by yaser on 6/15/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsDivisibleByThree(){
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree(){
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 1)
        XCTAssertEqual(result, false)
    }
}
