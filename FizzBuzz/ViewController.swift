//
//  ViewController.swift
//  FizzBuzz
//
//  Created by yaser on 6/15/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int?
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameScore = 0
        game = Game()
        // Do any additional setup after loading the view.
    }
    
    func play(move: String){
        guard let _game = game else{
            print("Game is nil!")
            return
        }
        gameScore = _game.play(move: move).score
    }


}

