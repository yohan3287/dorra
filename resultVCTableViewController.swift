//
//  resultVCTableViewController.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class resultVCTableViewController: UITableViewController {

    
    
   // let students = [
//        Students(studentName: "Axel Alexander"),
//        Students(studentName: "Brian Imanuel"),
//        Students(studentName: "Charlie Brown"),
//        Students(studentName: "David Beckhom"),
//        Students(studentName: "Elena Gomez")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  //      return Students.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        let student = students[indexPath.row]
// //       cell.textLabel?.text = students.studentName
        return cell
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
