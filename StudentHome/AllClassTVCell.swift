//
//  AllClassTVCell.swift
//  dorra
//
//  Created by Jacob Andrean on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class AllClassTVCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var allClassCV: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.allClassCV.dataSource = self
        self.allClassCV.delegate = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayAllClass.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "allClassCVCell", for: indexPath) as! AllClassCVCell
        if arrayAllClass.count != 0 {
            let course = arrayAllClass[indexPath.row]
            cell.dayLabel.text = course.day
            cell.classLabel.text = course.kelas
            cell.timeLabel.text = course.time
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: false)
    
        for index in 0...arrayAllClass.count {
            if indexPath.row == index {
                print("collection view \(index)")
                courseTitle = arrayAllClass[index].kelas!
//                let vc = UIStoryboard(name: "StudentHome", bundle: nil).instantiateViewController(withIdentifier: "mapJourneyVC") as! MapJourneyVC
//                self.viewController()?.navigationController?.pushViewController(vc, animated: true)
//                UIViewController().performSegue(withIdentifier: "toNavControllerMap", sender: nil)
            }
        }
    }

}

