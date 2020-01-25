//
//  ViewController.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/25/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rxSwiftBtnAction(_ sender: UIButton) {
        let listVc  = ListViewController(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(listVc, animated: true)
    }

}

//MARK: - View Controller Life Cycle
extension ViewController {
    
}

//MARK:- Rx Swift
extension ViewController {
    
}
