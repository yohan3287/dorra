//
//  ProgressTableViewCell.swift
//  dorra
//
//  Created by Adella Amanda on 27/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class ProgressTableViewCell: UITableViewCell {

    @IBOutlet weak var cName: UILabel!
    @IBOutlet weak var cDetail: UILabel!
    @IBOutlet weak var percentage: UILabel!
    @IBOutlet weak var pBar: UIProgressView!
    
   
    var object: progressLists? {
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
        guard let obj = object else { return }
        cName?.text = obj.cName
        cDetail?.text = obj.cDetail
        percentage?.text = obj.percentage
        
        for i in 0...10 {
            DispatchQueue.main.async {
                self.pBar.setProgress(Float(i/10), animated: true)
            }
        }
    }
    
}
