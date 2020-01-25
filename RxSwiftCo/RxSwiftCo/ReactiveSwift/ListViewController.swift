//
//  ListViewController.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/25/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    let tableView = UITableView()
}

//MARK: - View Life Cycle
extension ListViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.frame = self.view.frame
        self.view.addSubview(self.tableView)
    }


}
