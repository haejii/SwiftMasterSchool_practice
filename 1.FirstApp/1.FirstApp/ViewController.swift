//
//  ViewController.swift
//  1.FirstApp
//
//  Created by 양혜지 on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLabel: UILabel!
    @IBOutlet weak var MainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func MainButton(_ sender: Any) {
        MainLabel.text = "안녕하세요."
        print("aaaaa")
    }
    
}

