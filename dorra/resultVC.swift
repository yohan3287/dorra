//
//  resultVC.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class resultVC: UITableViewController {

    
    let result = [
      Results(numbers: "1", answer: "A", desc: "(5/1)"),
       Results(numbers: "2", answer: "C", desc: "(1/5)"),
        Results(numbers: "3", answer: "C", desc: "99"),
         Results(numbers: "4", answer: "D", desc: "-0.4"),
          Results(numbers: "5", answer: "B", desc: "144"),
//           Results(numbers: "6", answer: "A", desc: "(x + y = 8)"),
//            Results(numbers: "7", answer: "C", desc: "(20)"),
//             Results(numbers: "8", answer: "A", desc: "Konstanta"),
//              Results(numbers: "9", answer: "B", desc: "(2.5)"),
//               Results(numbers: "10", answer: "B", desc: "(x = 7)"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
        
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCellID", for: indexPath) as? ResultCell
        cell?.resultObject = result[indexPath.row]
        return cell!
    }

   
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//         let student = students[indexPath.row]
//         performSegue(withIdentifier: "resultVC", sender: students)
//     }
//    }
//
//// override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if let resultVCTableViewController = segue.destination as? resultVCTableViewController{
  //      resultVCTableViewController.initStudents(Students: sender as! Students)

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}









// 
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


