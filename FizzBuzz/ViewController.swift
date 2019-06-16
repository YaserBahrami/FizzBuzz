//
//  ViewController.swift
//  FizzBuzz
//
//  Created by yaser on 6/15/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!
    
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("1", for: .normal)
        }
    }
    
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        
        guard let _game = game else {
            print("Game is nil")
            return
        }
        
        gameScore = _game.score
        
    }
    
    func play(move: String){
        guard let _game = game else{
            print("Game is nil!")
            return
        }
        gameScore = _game.play(move: move).score
        numberButton.setTitle("\(gameScore!)", for: .normal)
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let _gameScore = gameScore else{
            print("Game score is nil")
            return
        }
        play(move: "\(_gameScore + 1)")
        
    }
    
}

