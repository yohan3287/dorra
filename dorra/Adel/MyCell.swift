//
//  MyCell.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var bgView: UIView! {
        didSet {
            bgView.layer.cornerRadius = bgView.frame.size.width / 2
            bgView.layer.masksToBounds = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
