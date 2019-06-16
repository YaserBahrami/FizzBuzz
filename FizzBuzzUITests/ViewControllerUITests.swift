//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by yaser on 6/16/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }

}
