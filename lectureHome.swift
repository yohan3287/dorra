//
//  lectureHome.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 22/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class lectureHome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: Button Test Purposes
    
    
    @IBAction func toAddClass(_ sender: UIButton) {
        performSegue(withIdentifier: "toAddClass", sender: nil)
    }
    

   

}
