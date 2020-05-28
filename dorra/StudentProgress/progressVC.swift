//
//  progressVC.swift
//  dorra
//
//  Created by Adella Amanda on 27/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class progressVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var progressTableView: UITableView!
    
    let pList : [progressLists] = [
        progressLists.init(cName: "Biology", cDetail: "See Detail", percentage: "100%"),
        progressLists.init(cName: "Math", cDetail: "See Details", percentage: "50%"),
        progressLists.init(cName: "English", cDetail: "See Detail", percentage: "100%")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressTableView.register(UINib(nibName: "ProgressTableViewCell", bundle: nil), forCellReuseIdentifier: "progressTableCellID")
        navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "progressTableCellID", for: indexPath) as? ProgressTableViewCell)!

        cell.object = pList[indexPath.row]
        
        return cell    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toProgressDetail", sender: nil)
                
    }

   

}
