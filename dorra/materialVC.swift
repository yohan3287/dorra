//
//  materialVC.swift
//  dorra
//
//  Created by Adella Amanda on 21/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class materialVC: UIViewController {
   

    
    let materials = [
        material(link1: "https://www.freecodecamp.org/",
                 link2: "https://hackr.io/",
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

    
//    func getIdentifier3(forSection section:Int) -> String {
//           switch section {
//           case 0:
//               return "guidingResources"
//           case 1:
//               return "videoConferences"
//           default:
//               return "videoConferences"
//           }
//       }
//
      
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        switch indexPath.section {
        //        case 0:
        let cell = tableView.dequeueReusableCell(withIdentifier: "materialCellID", for: indexPath) as? materialCell
        
        //             let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier3(forSection: indexPath.section), for: indexPath) as? materialCell {
        cell?.materialObj = materials[indexPath.row]
        return cell!
        
        //            }else{
        //                return UITableViewCell()}
        //        case 1:
        //            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier3(forSection: indexPath.section), for: indexPath) as? materialCell {
        //                cell.materialObj = materials[indexPath.row]
        //                return cell
        //            } else {
        //                return UITableViewCell()}
        //
        //        default:
        //            return UITableViewCell()
        
    }
    @IBAction func finishButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
//            let cell = tableView.dequeueReusableCell(withIdentifier: "materialCellID", for: indexPath) as? materialCell
//            cell?.materialObj = materials[indexPath.row]
//            //        let hasil = (result.[IndexPath.row])
//            return cell!



//func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//}

