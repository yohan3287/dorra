//
//  StudentMaterialVC.swift
//  dorra
//
//  Created by Jacob Andrean on 25/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class StudentMaterialVC: UIViewController {
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "materialCell") as? MaterialCell {
            cell.materialTitle.text = "zz"
            cell.materialResource.text = "what"
            return cell
        } else {
            return MaterialCell()
        }
    }

    @IBOutlet weak var materialTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.materialTableView.dataSource = self
        self.materialTableView.delegate = self
        // Do any additional setup after loading the view.
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

