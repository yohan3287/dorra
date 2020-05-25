//
//  DetailHistoryVC.swift
//  dorra
//
//  Created by Yohan Wongso on 25/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class DetailHistoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return t.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = detailHistoryCV.dequeueReusableCell(withReuseIdentifier: "detailCell", for: indexPath) as! DetailHistoryCollectionViewCell
        
        cell.numberLabel.text = String(indexPath.row + 1)
        cell.numberLabel.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        cell.titleLabel.text = t[indexPath.row]
        cell.linkLabel.text = l[indexPath.row]
        cell.noteLabel.text = n[indexPath.row]
        
        return cell
    }
    
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var totalClassLabel: UILabel!
    @IBOutlet weak var detailHistoryCV: UICollectionView!
    
    var t: [String] = ["title 1", "title 2", "title 3"]
    var l: [String] = ["www.wibu1.com", "www.wibu2.com", "www.wibu3.jp"]
    var n: [String] = ["anime for life", "gundam ampas", "anime bangku"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
