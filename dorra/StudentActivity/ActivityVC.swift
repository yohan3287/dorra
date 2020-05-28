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
        activityLists.init(aStatus: "Mr. Jeffrey added a new stage in Math Map"),
        activityLists.init(aStatus: "You have completed Math Journey")
    
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        activityTableView.register(UINib(nibName: "ActivityTableCell", bundle: nil), forCellReuseIdentifier: "ActivityTableViewCellID")
    
    }
    override  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 65
      }
      
      override func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return aList.count
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = (tableView.dequeueReusableCell(withIdentifier: "ActivityTableCellID", for: indexPath) as? ActivityTableViewCell)!

        cell.activityLabel?.text = aList[indexPath.row].aStatus

//        return cell()
          return ActivityTableViewCell()
      }

   

}
