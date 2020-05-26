//
//  doneVC.swift
//  dorra
//
//  Created by Adella Amanda on 26/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class doneVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func doneButton(_ sender: Any) {
        performSegue(withIdentifier: "toQuizHome", sender: nil)
    }
    
}
