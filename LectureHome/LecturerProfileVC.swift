//
//  LecturerProfileVC.swift
//  dorra
//
//  Created by Yohan Wongso on 24/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LecturerProfileVC: UIViewController {

    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var universityTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profilePictureImageView.image = #imageLiteral(resourceName: "3556940")
        nameTextField.text = currentName
        titleTextField.text = currentTitle
        universityTextField.text = currentUniversity
        phoneTextField.text = currentPhone
        emailTextField.text = currentEmail
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signOutButton(_ sender: Any) {
        performSegue(withIdentifier: "toLogin", sender: nil)
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
