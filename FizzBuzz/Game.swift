//
//  Game.swift
//  FizzBuzz
//
//  Created by yaser on 6/15/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: String) -> (status: Bool, score: Int){
        
        let result = brain.check(number: score + 1)
        if result == move{
            score += 1
            return (true, score)
        }else{
            return (false, score)
        }
    }
    
}
