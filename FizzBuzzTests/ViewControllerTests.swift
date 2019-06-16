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
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "Fizz")
        XCTAssertEqual(viewController.gameScore, 3)
    }
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    

}
