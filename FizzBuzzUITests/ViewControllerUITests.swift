//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by yaser on 6/16/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    let app = XCUIApplication()
    let numberButton = XCUIApplication().buttons["numberButton"]
    let fizzButton = XCUIApplication().buttons["fizzButton"]
    let buzzButton = XCUIApplication().buttons["buzzButton"]
    let fizzBuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTapNumberButtonIncrementsScore() {
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsTo2(){
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapNumberButtonTwiceIncrementsTo3(){
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    

}
