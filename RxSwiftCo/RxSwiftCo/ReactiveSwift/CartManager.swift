//
//  CartManager.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/26/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct CartManager {
    static let sharedInstance  = CartManager()
    let cartArray : BehaviorRelay<[Chocolate]> = BehaviorRelay(value: [])
}
