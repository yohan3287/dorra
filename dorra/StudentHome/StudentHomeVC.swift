//
//  StudentHomeVC.swift
//  dorra
//
//  Created by Jacob Andrean on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit
import CloudKit
class StudentHomeVC: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var profilePhoto: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // check cloudkit is connected
        CKContainer.default().fetchUserRecordID { (recordID, error) in
            if let error = error {
                print(error)
            } else if let recordID = recordID {
                print(recordID)
            }
        }

        // Do any additional setup after loading the view.
//        CloudKitHelper().createNewRecord()
     //   CloudKitHelper().saveRecord2(title: "biology", day: "Friday")
        CloudKitHelper().fetchAll()
        
        homeTableView.dataSource = self
        homeTableView.delegate = self
                
        self.profilePhoto.layer.masksToBounds = false
        self.profilePhoto.layer.cornerRadius = self.profilePhoto.frame.size.width / 2
        self.profilePhoto.clipsToBounds = true
        
        
//        arrayAllClass.append(Matkul(time: "1", kelas: "kelas", day: "hari", type: 1))
//        arrayAllClass.append(Matkul(time: "2", kelas: "kelas2", day: "hari2", type: 2))
        
        
        for index in 0...arrayAllClass.count-1 {
            if arrayAllClass[index].type == 1 {
                arrayToday.append(arrayAllClass[index])
            }
        }
        
        for index in 0...arrayAllClass.count-1{
            if arrayAllClass[index].type == 2 {
                arrayTomorrow.append(arrayAllClass[index])
            }
        }
    }
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func toProfile(_ sender: Any) {
        performSegue(withIdentifier: "toProfile", sender: nil)
    }
    
}

extension UIViewController: UITableViewDataSource, UITableViewDelegate {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return arrayToday.count
        case 1:
            return arrayTomorrow.count
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Today"
        case 1:
            return "Tomorrow"
        case 2:
            return "AllClass"
        default:
            return nil
        }
    }
    
    func getIdentifier(forSection section:Int) -> String {
        switch section {
        case 0:
            return "todayTVCell"
        case 1:
            return "tomorrowTVCell"
        case 2:
            return "allClassTVCell"
        default:
            return "allClassTVCell"
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? TodayTVCell {
                if arrayToday.count != 0 {
                    let course = arrayToday[indexPath.row]
                    cell.classLabel.text = course.kelas
                    cell.timeLabel.text = course.time
                    return cell
                } else {
                    return UITableViewCell()
                }
            } else {
                return TodayTVCell()
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? TomorrowTVCell {
                if arrayTomorrow.count != 0 {
                    let course = arrayTomorrow[indexPath.row]
                    cell.classLabel.text = course.kelas
                    cell.timeLabel.text = course.time
                    return cell
                } else {
                    return UITableViewCell()
                }
            } else {
                return TomorrowTVCell()
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? AllClassTVCell {
                return cell
            } else {
                return AllClassTVCell()
            }
        default:
            return UITableViewCell()
        }
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        switch indexPath.section {
        case 0:
            for index in 0...arrayToday.count {
                if indexPath.row == index {
                    print("today \(index)")
                    courseTitle = arrayToday[index].kelas!
                    performSegue(withIdentifier: "toNavControllerMap", sender: nil)
                    selectedCourse = Matkul(time: "1", kelas: "2", day: "3", type: 4)
                   
                }
            }
        case 1:
            for index in 0...arrayTomorrow.count {
                if indexPath.row == index {
                    print("tomorrow\(index)")
                    courseTitle = arrayTomorrow[index].kelas!
                    performSegue(withIdentifier: "toNavControllerMap", sender: nil)
                    selectedCourse = Matkul(time: "1", kelas: "2", day: "3", type: 4)
                }
            }
        default:
            break
        }
    }
    
    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        switch indexPath.section {
//        case 0:
//            if let cell = cell as? TodayTVCell {
//                cell.allClassCV.reloadData()
//            }
//        case 1:
//            if let cell = cell as? TomorrowTVCell {
//                cell.allClassCV.reloadData()
//            }
        case 2:
            if let cell = cell as? AllClassTVCell {
                cell.allClassCV.reloadData()
            }
        default:
            break
        }
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 78
        case 1:
            return 78
        case 2:
            return 128
        default:
            return 78
        }
    }
    
}

extension UIColor {
//    struct MyTheme {
        static var firstColor: UIColor  { return UIColor(red: 186, green: 252, blue: 43, alpha: 1) }
        static var secondColor: UIColor { return UIColor(red: 235, green: 245, blue: 200, alpha: 1) }
        static var thirdColor: UIColor { return UIColor(red: 253, green: 229, blue: 203, alpha: 1) }
//    }
}
