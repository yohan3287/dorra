//
//  ResultCell.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class ResultCell: UITableViewCell {

    @IBOutlet weak var resultLabel: UILabel!
    var resultObject: Results? {
        didSet {
            cellConfig()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfig() {
        guard let object = resultObject else { return }
        resultLabel.text = "\(object.numbers) \(object.answer) \(object.desc)"
    }

}
