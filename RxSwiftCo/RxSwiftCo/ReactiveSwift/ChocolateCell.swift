//
//  ChocolateCell.swift
//  RxSwiftCo
//
//  Created by sunil.kumar1 on 1/25/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ChocolateCell: UITableViewCell {
    static let Identifier = "ChocolateCell"
    
    @IBOutlet var chocolateName: UILabel!
    @IBOutlet var chocolatePrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureWithChocolate(chocolate:Chocolate){
        chocolateName.text = chocolate.countryName
        chocolatePrice.text = "\(chocolate.priceInDollars)"
    }
    
}
