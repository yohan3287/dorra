//
//  progressDetailVC.swift
//  dorra
//
//  Created by Adella Amanda on 27/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class progressDetailVC: UIViewController {

    @IBOutlet weak var percentageDetail: UILabel!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score1Detail: UILabel!
    
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score2Detail: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score3Detail: UILabel!
    @IBOutlet weak var pBarDetail: UIProgressView!
    
//    let progressBar = progressBar(totalUnitCount: 10)
//
    @IBOutlet weak var tableViewDetail: UITableView!
    
    let pList : [progressDet] = [
        progressDet.init(cDetName: "Stage 2 Math", cDetStatus: "Completed 3/5/2020"),
        progressDet.init(cDetName: "Stage 1 Math", cDetStatus: "Completed 10/2/2020")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
//            guard self.progressBar.isFinished == false else {
//                timer.invalidate()
//                return
//            }
//            
//            self.progressBar.completedUnitCount += 1
//            let progressFloat = Float(self.progressBar.fractionCompleted)
//            self.progressBar.setProgress(progressFloat, animated: true)
//            
//            self.progressBar.progress = progressFloat
//        }
//        
        tableViewDetail.register(UINib.init(nibName: "progressDetailTable", bundle: nil), forCellReuseIdentifier: "progressDetailCell")
        navigationController?.setNavigationBarHidden(false, animated: true)

        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "progressDetailCell", for: indexPath) as? progressDetailTable {
            cell.cDetName?.text = pList[indexPath.row].cDetName
            cell.cDetStatus?.text = pList[indexPath.row].cDetStatus
            print(pList[indexPath.row].cDetName)
            
//            cell.backgroundColor = .blue
            return cell
        }
        
        return progressDetailTable()
    }
    
}
