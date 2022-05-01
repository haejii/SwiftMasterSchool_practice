//
//  SecondViewController.swift
//  viewLifecycle_practice
//
//  Created by 양혜지 on 2022/05/01.
//

//
//  ViewController.swift
//  viewLifecycle_practice
//
//  Created by 양혜지 on 2022/05/01.
//

import UIKit

class SecondViewController: UIViewController {
    

    override func viewDidLoad() {
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        super.viewDidLoad()
        self.navigationItemSetting()
        print("========== 1. 두번째 viewDidLoad =========")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("========== 2. 두번째 viewWillAppear =========")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("========== 3. 두번째 viewDidAppear =========")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("========== 4. 두번째 viewWillDisappear =========")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("========== 5. 두번째 viewDidDisappear =========")
    }
    
    func navigationItemSetting() {
        self.navigationItem.title = "두번째 페이지"
    }

}

