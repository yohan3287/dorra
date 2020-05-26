//
//  LectureTodayTVCell.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 24/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LectureTodayTVCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var separator: UIImageView!
    @IBOutlet weak var classLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
