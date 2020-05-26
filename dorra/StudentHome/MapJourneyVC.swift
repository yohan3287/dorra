//
//  MapJourneyVC.swift
//  dorra
//
//  Created by Jacob Andrean on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class MapJourneyVC: UIViewController {

    var readyTime = "14:00"
    var statusComplete = [false,false,false,false,false]
    var dataCourse : Matkul!
    
    @IBOutlet weak var matkulTitle: UILabel!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    
    @IBOutlet weak var checkpoint1: UIImageView!
    @IBOutlet weak var checkpoint2: UIImageView!
    @IBOutlet weak var checkpoint3: UIImageView!
    @IBOutlet weak var checkpoint4: UIImageView!
    @IBOutlet weak var checkpoint5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(courseTitle)
        print(courseTitle)
        matkulTitle.text = courseTitle
    }
    
    func isComplete() {
        if statusComplete[0] == true {
            star2.isHidden = false
        }
        if statusComplete[1] == true {
            star2.isHidden = false
        }
        if statusComplete[2] == true {
            star2.isHidden = false
        }
        if statusComplete[3] == true {
            star2.isHidden = false
        }
        if statusComplete[4] == true {
            star2.isHidden = false
        }
    }
    
    @IBAction func stage1Button(_ sender: Any) {
        let alert = UIAlertController(title: "Matkul", message: "hari \(String(describing: selectedCourse.day))", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func stage2Button(_ sender: Any) {
        if star1.isHidden == true { //ganti date nanti
            let alert = UIAlertController(title: "Not Ready Yet", message: "This stage is start tommorow at \(readyTime), please come back tommorow", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
            //prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
//            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "storyboardidquiz or material") as! namaviewcontrollernya
//            vc.data = dataa
//            self.viewController()?.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func stage3Button(_ sender: Any) {
    }
    
    @IBAction func stage4Button(_ sender: Any) {
    }
    
    @IBAction func stage5Button(_ sender: Any) {
        performSegue(withIdentifier: "toMaterial", sender: nil)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
