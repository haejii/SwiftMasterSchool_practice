//
//  ViewController.swift
//  2.DiceGame
//
//  Created by 양혜지 on 2022/04/12.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    
    var imageList = ["black1", "black2", "black3", "black4", "black5", "black6"]
    var diceArry : [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceOne.image = #imageLiteral(resourceName: "black1")
        diceTwo.image = #imageLiteral(resourceName: "black1")
    }

    @IBAction func onClickRollButton(_ sender: Any) {
        
        guard let dice1 = imageList.randomElement() else {
            return
            
        }
        
        guard let dice2 = imageList.randomElement() else {
            return
        }

        diceOne.image = UIImage(named: dice1)
        diceTwo.image = UIImage(named: dice2)

    }
    
}

