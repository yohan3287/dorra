//
//  SignupVC.swift
//  dorra
//
//  Created by Jacob Andrean on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {

    @IBOutlet weak var createLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var universityTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if asStudent == true {
            createLabel.text = "Create your student account"
            print("student")
        }
        else if asStudent == false {
            createLabel.text = "Create your lecturer account"
            print("lecturer")
        }
    }
    
    func studentSignup() {
        var unique = true
        if nameTextField.text == "" || phoneTextField.text == "" || universityTextField.text == "" || emailTextField.text?.lowercased() == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "alert message", message: "fill in the blank!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            for user in studentAccount {
                if emailTextField.text?.lowercased() == user.value(forKey: "studentEmail") as? String {
                    let alert = UIAlertController(title: "alert message", message: "email udah ada woi", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                    self.present(alert, animated: true)
                    unique = false
                }
            }
            if unique == true {
                if let newStudentAccount = Students.save(viewContext: getViewContext(), name: nameTextField.text ?? "", phone: phoneTextField.text ?? "", university: universityTextField.text ?? "", email: emailTextField.text ?? "", password: passwordTextField.text ?? "") {
                    studentAccount.append(newStudentAccount)
                    print(newStudentAccount)
                    
                    let alert = UIAlertController(title: "alert message", message: "Sign up success", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        alert.dismiss(animated: true, completion: nil)
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    func lecturerSignup() {
        var unique = true
        if nameTextField.text == "" || phoneTextField.text == "" || universityTextField.text == "" || emailTextField.text?.lowercased() == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "alert message", message: "fill in the blank!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            for user in lecturerAccount {
                if emailTextField.text?.lowercased() == user.value(forKey: "lectureEmail") as? String {
                    let alert = UIAlertController(title: "alert message", message: "email udah ada woi", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                    self.present(alert, animated: true)
                    unique = false
                }
            }
            if unique == true {
                if let newLecturerAccount = Lecture.save(viewContext: getViewContext(), name: nameTextField.text ?? "", phone: phoneTextField.text ?? "", university: universityTextField.text ?? "", email: emailTextField.text ?? "", password: passwordTextField.text ?? "") {
                    lecturerAccount.append(newLecturerAccount)
                    print(newLecturerAccount)
                    
                    let alert = UIAlertController(title: "alert message", message: "Sign up success", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        alert.dismiss(animated: true, completion: nil)
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
    }
    
    @IBAction func signupButton(_ sender: Any) {
        if asStudent == true {
            studentSignup()
        }
        else if asStudent == false {
            lecturerSignup()
        }
    }
    
    @IBAction func backToSigninVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
