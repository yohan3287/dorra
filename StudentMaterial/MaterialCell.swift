//
//  MaterialCell.swift
//  dorra
//
//  Created by Jacob Andrean on 25/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class MaterialCell: UITableViewCell {

    @IBOutlet weak var materialTitle: UILabel!
    @IBOutlet weak var materialResource: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
