//
//  ViewController.swift
//  RPS
//
//  Created by 건희 on 2/13/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!

    @IBOutlet weak var comImageView: UIImageView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    
    var myChoice: Rps = Rps.noChoice
    var computerChoice: Rps = Rps.noChoice
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이미지 초기화
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 레이블 "준비" 초기화
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    
    // 가위바위보 선택 버튼
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        
        sender.backgroundColor = UIColor.purple
        
        guard let title = sender.currentTitle else { return }
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
        
    }
    
    // 게임 시작
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        buttonColorRest()
        print("게임 시작", myChoice)
    
        if myChoice == Rps.noChoice {
            let alret = UIAlertController(title: "아직 마음을 안정하셨군요", message: "나의 가위바위보를 먼저 정해주세요", preferredStyle: .alert)
            let yes = UIAlertAction(title: "알겠습니다.", style: .default, handler: nil)

            alret.addAction(yes)

            present(alret, animated: true, completion: nil)
            
            return
        }
            
        computerChoice = Rps(rawValue: Int.random(in: 0...2)) ?? Rps.rock
        
        // 컴퓨터 초이스 view
        switch computerChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        case .noChoice:
            break
        }
        
        // my Choice view
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        case .noChoice:
            break
        }
        
        if myChoice == computerChoice {
            mainLabel.text = "비겼습니다"
        } else if computerChoice == Rps.rock && myChoice == Rps.paper {
            mainLabel.text = "이겼습니다"
        } else if computerChoice == Rps.paper && myChoice == Rps.scissors {
            mainLabel.text = "이겼습니다"
        } else if computerChoice == Rps.scissors && myChoice == Rps.rock {
            mainLabel.text = "이겼습니다"
        } else {
            mainLabel.text = "졌습니다"
        }
        
        myChoice = Rps.noChoice
        print("게임 끝", myChoice)
    }
    
    
    // 리셋
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 이미지 초기화
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 레이블 "준비" 초기화
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
        mainLabel.text = "선택하세요"
    }
    
    func buttonColorRest() {
        scissorButton.backgroundColor = UIColor.systemGreen
        rockButton.backgroundColor = UIColor.systemGreen
        paperButton.backgroundColor = UIColor.systemGreen
        
        
    }
    
    
}

