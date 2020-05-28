//
//  ActivityVC.swift
//  dorra
//
//  Created by Adella Amanda on 28/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class ActivityVC: UIViewController {

    @IBOutlet weak var activityTableView: UITableView!
    
    let aList : [activityLists] = [
        activityLists.init(aStatus: "Mr. Jeffrey added a new stage in Math Map", aPost: "2"),
        activityLists.init(aStatus: "You have completed Math Stage", aPost: "1")
   
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        activityTableView.register(UINib(nibName: "ActivityTableViewCell", bundle: nil), forCellReuseIdentifier: "ActivityTableCellID")
        
// tableViewDetail.register(UINib.init(nibName: "progressDetailTable", bundle: nil), forCellReuseIdentifier: "progressDetailCell")
    }
       
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
      
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aList.count
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "ActivityTableCellID", for: indexPath) as? ActivityTableViewCell)!
        cell.activityLabel?.text = aList[indexPath.row].aStatus
        cell.activityPost?.image = UIImage(named: "\(aList[indexPath.row].aPost)")
        
//        cell.namaVar.image = UIImage(named: )
//        return cell()
        return ActivityTableViewCell()
    }

   

}
