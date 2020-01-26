//
//  ListViewController.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/25/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ListViewController: UIViewController {
    let tableView = UITableView()
    let sourceArray = Observable.just(Chocolate.ofEurope)
    let disposeBag = DisposeBag()
    var countItem : UIBarButtonItem?
    
}

//MARK: - View Life Cycle
extension ListViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.bindTableViewWithData()
        self.setNavigationCountValue()
        self.bindCellWithNavigationCount()
    }
    func setupTableView() {
        self.tableView.frame = self.view.frame
        self.view.addSubview(self.tableView)
        self.tableView.tableFooterView = UIView()
        let nib = UINib(nibName: ChocolateCell.Identifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: ChocolateCell.Identifier)
        self.countItem = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(countAction))
        self.navigationItem.rightBarButtonItem = countItem
    }
    
    @objc func countAction() {
        
    }
}

//MARK:- RX Method
extension ListViewController {
    func bindTableViewWithData() {
        sourceArray.bind(to: tableView.rx.items(cellIdentifier: ChocolateCell.Identifier, cellType: ChocolateCell.self)) {
            (indexPath,chocolate, cell) in
            cell.configureWithChocolate(chocolate: chocolate)
        }
        .disposed(by: disposeBag)
    }
    
    func setNavigationCountValue() {
        CartManager.sharedInstance.cartArray.asObservable().subscribe(onNext: { [unowned self] chocolates in
            self.countItem?.title = "\(chocolates.count)"
        })
        .disposed(by: disposeBag)
    }
    
    func bindCellWithNavigationCount() {
        tableView.rx.modelSelected(Chocolate.self).subscribe(onNext: {(chocolate) in
            let newValues = CartManager.sharedInstance.cartArray.value + [chocolate]
            CartManager.sharedInstance.cartArray.accept(newValues)
        })
        .disposed(by: disposeBag)
    }
}

