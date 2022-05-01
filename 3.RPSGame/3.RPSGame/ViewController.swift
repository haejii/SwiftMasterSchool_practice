//
//  ViewController.swift
//  3.RPSGame
//
//  Created by 양혜지 on 2022/04/13.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var ImageList : [UIImage] = [#imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "paper")]
    
    var myChoice: RPS = RPS.rock
    var comChoice: RPS = RPS(rawValue: Int.random(in: 0...2))!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.comImageView.image = #imageLiteral(resourceName: "ready")
        self.myImageView.image = #imageLiteral(resourceName: "ready")
        self.comChoiceLabel.text = "준비"
        self.myChoiceLabel.text = "준비"
        
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        
        guard let buttonOption = sender.titleLabel?.text else { return }
        
        myChoiceLabel.text = buttonOption
        
        switch buttonOption {
        case "가위" :
            myChoice = RPS.scissors
            myImageView.image = #imageLiteral(resourceName: "scissors")
            break
        case "바위" :
            myChoice = RPS.rock
            myImageView.image = #imageLiteral(resourceName: "rock")
            break
        case "보"  :
            myChoice = RPS.paper
            myImageView.image = #imageLiteral(resourceName: "paper")
            break
        default:
            break
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
   
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        switch comChoice {
        case RPS.scissors:
            comChoiceLabel.text = "가위"
            comImageView.image = #imageLiteral(resourceName: "scissors")
            break
        case RPS.rock :
            comChoiceLabel.text = "바위"
            comImageView.image = #imageLiteral(resourceName: "rock")
            break
        case RPS.paper :
            comChoiceLabel.text = "보"
            comImageView.image = #imageLiteral(resourceName: "paper")
            break
        }
        
 
    }
    
}

