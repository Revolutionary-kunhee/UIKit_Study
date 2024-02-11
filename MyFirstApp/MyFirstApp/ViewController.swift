//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 건희 on 2/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceView: UIImageView!
    @IBOutlet weak var secondDiceView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstDiceView.image = diceArray.randomElement()
        
        secondDiceView.image = diceArray.randomElement()
    }
    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째 이미지뷰의 이미지를 랜덤으로 변경
        firstDiceView.image = diceArray.randomElement()
        
        // 두번째 이미지뷰의 이미지를 랜덤으로 변경
        secondDiceView.image = diceArray.randomElement()
    }
    
    
}
