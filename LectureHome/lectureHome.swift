//
//  lectureHome.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 22/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class lectureHome: UIViewController {
    
    // MARK: TABLE AND CV
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        switch section {
            case 1:
                return arrayToday2.count
            case 2:
                return arrayTomorrow2.count
            case 0:
                return 1
            default:
                return 0
            }
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier2(forSection: indexPath.section), for: indexPath) as? LectureTodayTVCell {
                if arrayToday2.count != 0 {
                    let course = arrayToday2[indexPath.row]
                    cell.classLabel.text = course.title
                    let formatter = DateFormatter()
                    formatter.dateFormat = "HH:mm"
                    let formattedShift = formatter.string(from: course.shift)
                    print("=======================> \(formattedShift)")
                    cell.timeLabel.text = formattedShift
                    return cell
                } else {
                    return UITableViewCell()
                }
            } else {
                return LectureTodayTVCell()
            }
            
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier2(forSection: indexPath.section), for: indexPath) as? LectureTomorrowTVCell {
                if arrayTomorrow2.count != 0 {
                    let course = arrayTomorrow2[indexPath.row]
                    cell.classLabel.text = course.title
                    let formatter = DateFormatter()
                    formatter.dateFormat = "HH:mm"
                    let formattedShift = formatter.string(from: course.shift)
                    print("=======================> \(formattedShift)")
                    cell.timeLabel.text = formattedShift
                    return cell
                } else {
                    return UITableViewCell()
                }
            } else {
                return LectureTomorrowTVCell()
            }
            case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: getIdentifier2(forSection: indexPath.section), for: indexPath) as? LectureAllClassTVCell {
                      return cell
                  } else {
                      return LectureAllClassTVCell()
                  }
            default:
                  return UITableViewCell()
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
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
    
    func getIdentifier2(forSection section:Int) -> String {
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
           case 1:
               for index in 0...arrayToday2.count {
                   if indexPath.row == index {
                       print("today \(index)")
                       performSegue(withIdentifier: "toDetailClass", sender: nil)
                       selectedCourse = Matkul(time: "1", kelas: "2", day: "3", type: 4)
                   }
               }
           case 2:
               for index in 0...arrayTomorrow2.count {
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
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
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
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
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
    
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var profilePhoto: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeTableView.dataSource = self
        self.homeTableView.delegate = self
        
        self.profilePhoto.layer.masksToBounds = false
        self.profilePhoto.layer.cornerRadius = self.profilePhoto.frame.size.width / 2
        self.profilePhoto.clipsToBounds = true
        
        // MARK: data load
         dateFormatter.dateFormat = "YYYY-MM-dd"
            let currentDateString = dateFormatter.string(from: currentDate)
            
            dateComponent.day = 1
            let tomorrowDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
            let tomorrowDateString = dateFormatter.string(from: tomorrowDate!)
        
            for index in 0...arrayAllClass2.count-1 {
                let classDateString = dateFormatter.string(from: arrayAllClass2[index].shift)
                if classDateString == currentDateString {
                    arrayToday2.append(arrayAllClass2[index])
                } else {
                    print("Today failllllllllllllll")
                }
            }
            
            for index in 0...arrayAllClass2.count-1{
                let classDateString = dateFormatter.string(from: arrayAllClass2[index].shift)
                if classDateString == tomorrowDateString {
                    arrayTomorrow2.append(arrayAllClass2[index])
                } else {
                    print("tomorrow Fail")
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
    
    @IBAction func toHistory(_ sender: UIButton) {
        performSegue(withIdentifier: "toHistory", sender: nil)
    }
    
    
}

//extension UIColor {
////    struct MyTheme {
//        static var firstColor: UIColor  { return UIColor(red: 186, green: 252, blue: 43, alpha: 1) }
//        static var secondColor: UIColor { return UIColor(red: 235, green: 245, blue: 200, alpha: 1) }
//        static var thirdColor: UIColor { return UIColor(red: 253, green: 229, blue: 203, alpha: 1) }
////    }
//}
