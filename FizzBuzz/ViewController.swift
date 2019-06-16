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
            guard let _gameScore = gameScore else {
                return
            }
            
            numberButton.setTitle("\(_gameScore)", for: .normal)
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
    
    func play(move: Move){
        guard let _game = game else{
            print("Game is nil!")
            return
        }
        gameScore = _game.play(move: move).score
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        play(move: .number)
        
    }
    
}

