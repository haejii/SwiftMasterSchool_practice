//
//  ViewController.swift
//  1.FirstApp
//
//  Created by 양혜지 on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLabel: UILabel!

    var flag = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func MainButton(_ sender: Any) {
        if flag == true {
            MainLabel.text = "반갑습니다."
            MainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            self.flag = false
        }else {
            MainLabel.text = "안녕하세요."
            MainLabel.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            self.flag = true
        }
    }
    
}

