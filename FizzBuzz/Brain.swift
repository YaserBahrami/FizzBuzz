//
//  Brain.swift
//  FizzBuzz
//
//  Created by yaser on 6/15/19.
//  Copyright © 2019 Bahrami. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool{
        if number % 3 == 0{
            return true
        }else{
            return false
        }
    }
    
    func isDivisibleByFive(number: Int) -> Bool{
        if number % 5 == 0{
            return true
        }else{
            return false
        }
    }
}
