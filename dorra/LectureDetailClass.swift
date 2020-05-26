//
//  LectureDetailClass.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 24/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LectureDetailClass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    // MARK: Testing Button Purposes
    @IBAction func addStage(_ sender: UIButton) {
        performSegue(withIdentifier: "toAddStage", sender: nil)
    }
    

}
