//
//  LecturerDetailHistoryTVCell.swift
//  dorra
//
//  Created by Yohan Wongso on 28/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LecturerDetailHistoryTVCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var noteLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
