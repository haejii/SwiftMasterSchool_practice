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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.comImageView.image = #imageLiteral(resourceName: "ready")
        self.myImageView.image = #imageLiteral(resourceName: "ready")
        self.comChoiceLabel.text = "준비"
        self.myChoiceLabel.text = "준비"
        
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        
       // sender.titleLabel?.text == "가위"
        sender.currentTitle!
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
    }
    
}

