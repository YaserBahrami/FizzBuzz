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
    
    init() {
        score = 0
    }
    
    func play(move: String) -> Bool{
        score += 1
        return true
    }
    
}
