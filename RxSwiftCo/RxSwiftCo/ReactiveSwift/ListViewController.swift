//
//  ListViewController.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/25/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit
import RxSwift

class ListViewController: UIViewController {
    let tableView = UITableView()
    let sourceArray = Observable.just(Chocolate.ofEurope)
    let disposeBag = DisposeBag()
}

//MARK: - View Life Cycle
extension ListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.frame = self.view.frame
        self.view.addSubview(self.tableView)
        self.setupTableView()
    }

}

//MARK:- RX Method
extension ListViewController {
    func setupTableView() {

    }
}
