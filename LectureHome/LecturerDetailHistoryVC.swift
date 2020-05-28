//
//  LecturerDetailHistoryVC.swift
//  dorra
//
//  Created by Yohan Wongso on 28/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LecturerDetailHistoryVC: UIViewController{

    @IBOutlet weak var detailHistoryTV: UITableView!
    
    var number: [Int] = [1, 2, 3]
    var t: [String] = ["t1", "t2", "t3"]
    var l: [String] = ["l1", "l2", "l3"]
    var n: [String] = ["n1", "n2", "n3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.detailHistoryTV.dataSource = self
        self.detailHistoryTV.delegate = self
    }

}

extension LecturerDetailHistoryVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailHistoryTV.dequeueReusableCell(withIdentifier: "detailHistoryCell", for: indexPath) as! LecturerDetailHistoryTVCell
        cell.numberLabel.text = String(number[indexPath.row])
        cell.titleLabel.text = t[indexPath.row]
        cell.linkLabel.text = l[indexPath.row]
        cell.noteLabel.text = n[indexPath.row]
    
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
}
