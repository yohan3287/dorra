//
//  lectureHome.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 22/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class lectureHome: UIViewController {
    
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var profilePhoto: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.dataSource = self
        homeTableView.delegate = self
        
        self.profilePhoto.layer.masksToBounds = false
        self.profilePhoto.layer.cornerRadius = self.profilePhoto.frame.size.width / 2
        self.profilePhoto.clipsToBounds = true
        
        // MARK: Dummy Data
        arrayAllClass.append(Matkul(time: "1", kelas: "kelas", day: "hari", type: 1))
            arrayAllClass.append(Matkul(time: "2", kelas: "kelas2", day: "hari2", type: 2))
            arrayAllClass.append(Matkul(time: "3", kelas: "kelas3", day: "hari3", type: 1))
            arrayAllClass.append(Matkul(time: "2", kelas: "kelas4", day: "hari2", type: 2))
            arrayAllClass.append(Matkul(time: "2", kelas: "kelas5", day: "hari2", type: 2))
            arrayAllClass.append(Matkul(time: "2", kelas: "kelas6", day: "hari2", type: 2))
            
            for index in 0...arrayAllClass.count-1{
                if arrayAllClass[index].type == 1 {
                    arrayToday.append(arrayAllClass[index])
                }
            }
            
            for index in 0...arrayAllClass.count-1{
                if arrayAllClass[index].type == 2 {
                    arrayTomorrow.append(arrayAllClass[index])
                }
            }
        
        
        // END MARK
        
    }
    
    
    
    @IBAction func toProfile(_ sender: UIButton) {
        performSegue(withIdentifier: "toProfile", sender: nil)
    }
    
    // MARK: Button Test Purposes
    
    @IBAction func toAddClass(_ sender: UIButton) {
        performSegue(withIdentifier: "toAddClass", sender: nil)
    }
    
}

extension UIViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        switch section {
            case 1:
                return arrayToday.count
            case 2:
                return arrayTomorrow.count
            case 0:
                return 1
            default:
                return 0
            }
        
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? LectureTodayTVCell {
                      if arrayToday.count != 0 {
                          let course = arrayToday[indexPath.row]
                          cell.classLabel.text = course.kelas
                          cell.timeLabel.text = course.time
                          return cell
                      } else {
                          return UITableViewCell()
                      }
                  } else {
                      return LectureTodayTVCell()
                  }
            
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? LectureTomorrowTVCell {
                         if arrayTomorrow.count != 0 {
                             let course = arrayTomorrow[indexPath.row]
                             cell.classLabel.text = course.kelas
                             cell.timeLabel.text = course.time
                             return cell
                         } else {
                             return UITableViewCell()
                         }
                     } else {
                         return LectureTomorrowTVCell()
                     }
            case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier(forSection: indexPath.section), for: indexPath) as? LectureAllClassTVCell {
                      return cell
                  } else {
                      return LectureAllClassTVCell()
                  }
            default:
                  return UITableViewCell()
        }
        
        
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 1:
            return "Today"
        case 2:
            return "Tomorrow"
        case 0:
            return "All Class"
        default:
            return nil
        }
    }
    
    func getIdentifier(forSection section:Int) -> String {
        switch section {
        case 1:
            return "lectureTodayTVCell"
        case 2:
            return "lectureTomorrowTVCell"
        case 0:
            return "lectureAllClassTVCell"
        default:
            return "lectureAllClassTVCell"
        }
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
           case 1:
               for index in 0...arrayToday.count {
                   if indexPath.row == index {
                       print("today \(index)")
                       performSegue(withIdentifier: "toDetailClass", sender: nil)
                       selectedCourse = Matkul(time: "1", kelas: "2", day: "3", type: 4)
                   }
               }
           case 2:
               for index in 0...arrayTomorrow.count {
                   if indexPath.row == index {
                       print("tomorrow\(index)")
                       performSegue(withIdentifier: "toDetailClass", sender: nil)
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
            case 0:
                if let cell = cell as? LectureAllClassTVCell {
                    cell.allClassCV.reloadData()
                }
            default:
                break
            }
        }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 1:
            return 78
        case 2:
            return 78
        case 0:
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
