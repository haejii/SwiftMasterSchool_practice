//
//  ViewController.swift
//  viewLifecycle_practice
//
//  Created by 양혜지 on 2022/05/01.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        super.viewDidLoad()
        self.navigationItemSetting()
        print("========== 1. viewDidLoad =========")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("========== 2. viewWillAppear =========")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("========== 3. viewDidAppear =========")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("========== 4. viewWillDisappear =========")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("========== 5. viewDidDisappear =========")
    }
    
    func navigationItemSetting() {
        self.navigationItem.title = "첫번째 페이지"
        let rightButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: #selector(pressButton))
        self.navigationItem.rightBarButtonItem = rightButton
    }

    @objc func pressButton() {
        let secondeViewController = SecondViewController()
        self.navigationController?.pushViewController(secondeViewController, animated: true)
    }
}

