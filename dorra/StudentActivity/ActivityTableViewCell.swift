//
//  ActivityTableViewCell.swift
//  dorra
//
//  Created by Adella Amanda on 28/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var activityPost: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
