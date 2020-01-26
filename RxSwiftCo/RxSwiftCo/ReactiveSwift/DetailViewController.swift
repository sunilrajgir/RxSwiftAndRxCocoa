//
//  DetailViewController.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/26/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DetailViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var textLabel: UILabel!
    
    private let disposeBag = DisposeBag()
    private let throttleIntervalInMilliseconds = 100
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Rx
extension DetailViewController {
    func setupTextChangeHandling() {
        
    }
}

extension DetailViewController {
     func validate(cardText: String?) -> Bool {
        return true
    }
}
