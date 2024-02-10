//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 건희 on 2/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    //앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.backgroundColor = UIColor.yellow
    }
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        
        mainLabel.text = "안녕하세요"
        myButton.backgroundColor = UIColor.red
        
    }
    
    

}
