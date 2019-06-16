//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by yaser on 6/15/19.
//  Copystatus © 2019 Bahrami. All statuss reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    let game = Game()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        _ = game.play(move: "1")
        _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsstatus(){
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result.status, true)
    }
    
    func testIfMoveIsWrong(){
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result.status, false)
    }
    
    func testIfBuzzMovestatus(){
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result.status, true)
    }
    
    func testIfBuzzMoveWrong(){
        game.score = 6
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result.status, false)
    }
    
    func testIfFizzBuzzMovestatus() {
        game.score = 29
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result.status, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 27
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result.status, false)
    }
    
    func testIfNumberMovestatus() {
        game.score = 3
        let result = game.play(move: "4")
        XCTAssertEqual(result.status, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 4
        let result = game.play(move: "5")
        XCTAssertEqual(result.status, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMovestatus() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.status)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    }
    

}
