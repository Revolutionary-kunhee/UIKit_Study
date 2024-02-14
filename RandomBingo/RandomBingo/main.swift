//
//  main.swift
//  RandomBingo
//
//  Created by 건희 on 2/14/24.
//

import Foundation

var randomInt: Int = Int.random(in: 1...100)
var myChoice: Int = 0


while true {
    let inputValue = readLine()
    
    if let unrappedInput = inputValue {
        if let numbers = Int(unrappedInput) {
            myChoice = numbers
        }
    }
    
    if randomInt > myChoice {
        print("UP")
    } else if randomInt < myChoice {
        print("DOWN")
    } else {
        print("Bingo")
        break
    }
}

