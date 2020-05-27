//
//  LectureAllClassTVCell.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 24/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LectureAllClassTVCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayAllClass2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lectureAllClassCVCell", for: indexPath) as! LectureAllClassCVCell
        
        if arrayAllClass2.count != 0 {
            let course = arrayAllClass2[indexPath.row]
            cell.dayLabel.text = course.day
            cell.classLabel.text = course.title
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            let formattedShift = formatter.string(from: course.shift)
            print("=======================> \(formattedShift)")
            cell.timeLabel.text = formattedShift
        }
         return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          collectionView.deselectItem(at: indexPath, animated: false)
        
          for index in 0...arrayAllClass2.count {
                    if indexPath.row == index {
                        print("collection view \(index)")
        //                let course = arrayAllClass[indexPath.row]
        //                let vc = UIStoryboard(name: "StudentHome", bundle: nil).instantiateViewController(withIdentifier: "mapJourneyVC") as! MapJourneyVC
        //                vc.matkulTitle?.text = "a"
                    }
                }
    }
    

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

}
