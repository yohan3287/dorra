//
//  quizSecondViewController.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class quizSecondViewController: UIViewController {

    @IBOutlet weak var questionLabel: UIView!
    
    var numberArray = ["1", "2", "3" ,"4", "5", "6", "7", "8" ,"9", "10", "11", "12", "13", "14", "15"]

       @IBOutlet weak var myCollectionNumber: UICollectionView!
       override func viewDidLoad() {
           super.viewDidLoad()
           setupUI()
       }
       
       func setupUI() {
           myCollectionNumber.register(UINib(nibName: "MyCell", bundle: nil), forCellWithReuseIdentifier: "myCellID")
           myCollectionNumber.reloadData()
       }


}
extension quizSecondViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "myCellID", for: indexPath) as? MyCell)!
//        cell.numberLabel.text = numberArray[indexPath.row]
//        return cell
//    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected index : \(indexPath.row + 1)")
    }
}
}
