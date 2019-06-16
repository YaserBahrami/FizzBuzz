//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by yaser on 6/16/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {
    var viewController : ViewController!

    override func setUp() {
        super.setUp()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

}
