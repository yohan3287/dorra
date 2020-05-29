//
//  ViewController.swift
//  dorra
//
//  Created by Yohan Wongso on 18/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class SigninVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        studentAccount = Students.fetchAll(viewContext: getViewContext())
        lecturerAccount = Lecture.fetchAll(viewContext: getViewContext())
        
        let emailImageView = UIImageView()
        let emailIcon = UIImage(named: "mail")
        emailImageView.image = emailIcon
        emailTextField.leftView = emailImageView
        emailTextField.leftViewMode = .always
        
        let passwordImageView = UIImageView()
        let passwordIcon = UIImage(named: "lock")
        passwordImageView.image = passwordIcon
        passwordTextField.leftView = passwordImageView
        passwordTextField.leftViewMode = .always
      
    }
    
    func assignCurrentAccount(name: String!, title: String!, univ: String!, phone: String!, email: String!) {
        currentName = name
        currentTitle = title
        currentUniversity = univ
        currentPhone = phone
        currentEmail = email
    }
    
    func studentSignin() {
        if emailTextField.text == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "alert message", message: "fill email and password!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            var status = false
            studentAccount = Students.fetchAll(viewContext: getViewContext())
            for user in studentAccount {
                if emailTextField.text?.lowercased() == user.value(forKey: "studentEmail") as? String && passwordTextField.text == user.value(forKey: "studentPassword") as? String {
                    status = true
                    let alert = UIAlertController(title: "alert message", message: "login success", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    if status2 == false{
                    CloudKitHelper().fetchAllData()
                    }
                    assignCurrentAccount(name: user.studentName, title: "Computer Science", univ: user.studentUniversity, phone: user.studentPhone, email: user.studentEmail)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        alert.dismiss(animated: true) {
                            self.performSegue(withIdentifier: "toStudentHome", sender: nil)
                        }
                    }
                }
            }
            if status == false {
                let alert = UIAlertController(title: "alert message", message: "incorrect username or password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
    
    func lecturerSignin() {
        if emailTextField.text == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "alert message", message: "fill email and password!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            var status = false
            lecturerAccount = Lecture.fetchAll(viewContext: getViewContext())
            for user in lecturerAccount {
                if emailTextField.text?.lowercased() == user.value(forKey: "lectureEmail") as? String && passwordTextField.text == user.value(forKey: "lecturePassword") as? String {
                    status = true
                    let alert = UIAlertController(title: "alert message", message: "login success", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    if status2 == false{
                        CloudKitHelper().fetchAllData()
                    }
                    assignCurrentAccount(name: user.lectureName, title: "Computer Science", univ: user.lectureUniversity, phone: user.lecturePhone, email: user.lectureEmail)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        alert.dismiss(animated: true) {
                            self.performSegue(withIdentifier: "toLecturerHome", sender: nil)
                        }
                        
                    }
                }
            }
            if status == false {
                let alert = UIAlertController(title: "alert message", message: "incorrect username or password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
    
    @IBAction func chosenSegmentedControl(_ sender: Any) {
        switch segmentedControlOutlet.selectedSegmentIndex {
        case 0:
            asStudent = true
        case 1:
            asStudent = false
        default:
            break
        }
    }
    
    @IBAction func signinButton(_ sender: Any) {
        if asStudent == true {
            studentSignin()
        }
        else if asStudent == false {
            lecturerSignin()
        }
    }
    
    @IBAction func toSignupVC(_ sender: Any) {
        performSegue(withIdentifier: "toSignup", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationView = segue.destination as? SignupVC
//        destinationView?.asStudent
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destinationView = segue.destination as? ModalViewController
//        if let txt = questionTextField.text{
//            destinationView?.question = txt
//        }
//        destinationView?.optionArrayModal = optionArray
//        destinationView?.iModalView = i
//    }
    
}

