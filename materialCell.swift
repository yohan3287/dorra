//
//  materialCell.swift
//  dorra
//
//  Created by Adella Amanda on 21/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class materialCell: UITableViewCell {

    @IBOutlet weak var materialLabel: UILabel!
    var materialObj: material? {
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
    func cellConfig(){
        guard let object = materialObj
                   else { return }
               materialLabel.text = "\(object.link1) \(object.link2)"
            }
    }
    

