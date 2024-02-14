//
//  ViewController.swift
//  UpDownGame
//
//  Created by 건희 on 2/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var computerNumber: Int = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "컴퓨터의 숫자를 맞춰보세요"
        numberLabel.text = ""
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        numberLabel.text = sender.currentTitle
        
    }

    
    @IBAction func selectButtonTapped(_sender: UIButton) {
        guard let myChoice = numberLabel.text else { return }
        guard let myChoiceNumber = Int(myChoice) else { return }
        
        if myChoiceNumber > computerNumber {
            mainLabel.text = "DOWN"
        } else if myChoiceNumber < computerNumber {
            mainLabel.text = "UP"
        } else {
            mainLabel.text = " 😎Bingo"
        }
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "컴퓨터의 숫자를 맞춰보세요"
        numberLabel.text = ""
        computerNumber = Int.random(in: 1...10)
    }
    
    
    
}
