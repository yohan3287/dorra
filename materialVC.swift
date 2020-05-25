//
//  materialVC.swift
//  dorra
//
//  Created by Adella Amanda on 21/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class materialVC: UITableViewController {
   
    

    
    let materials = [
        material(link1: "https://www.freecodecamp.org/news/a-gentler-introduction-to-programming-1f57383a1b2c/",
                 link2: "https://hackr.io/tutorials/learn-intro-to-programming",
                 vidcon: "https://da-id.zoom.us/j/98941216445"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return materials.count
            
        }

      
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "materialCellID", for: indexPath) as? materialCell
            cell?.materialObj = materials[indexPath.row]
    //        let hasil = (result.[IndexPath.row])
            return cell!
        }

       
         override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
}
}
