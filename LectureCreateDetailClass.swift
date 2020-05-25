//
//  LectureCreateDetailClass.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 25/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LectureCreateDetailClass: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: Quiz Outlet
    @IBOutlet weak var questionView: UIView!
    @IBOutlet weak var answerView1: UIView!
    @IBOutlet weak var answerView2: UIView!
    @IBOutlet weak var answerView3: UIView!
    @IBOutlet weak var answerView4: UIView!
    @IBOutlet weak var newQuestionButton: UIButton!
    
    @IBOutlet weak var questionTF: UITextField!
    @IBOutlet weak var answerTF1: UITextField!
    @IBOutlet weak var answerTF2: UITextField!
    @IBOutlet weak var answerTF3: UITextField!
    @IBOutlet weak var answerTF4: UITextField!
    
    // MARK: Material Outlet
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var guidingResourceTF: UITextField!
    @IBOutlet weak var linkTF: UITextField!
    @IBOutlet weak var notesTF: UITextField!
    
    
    @IBOutlet weak var materialView: UIView!
    @IBOutlet weak var quizView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
//            questionView.isHidden = true
//            answerView1.isHidden = true
//            answerView2.isHidden = true
//            answerView3.isHidden = true
//            answerView4.isHidden = true
//            newQuestionButton.isHidden = true
            quizView.isHidden = true
            materialView.isHidden = false
            
        case 1:
//            questionView.isHidden = false
//            answerView1.isHidden = false
//            answerView2.isHidden = false
//            answerView3.isHidden = false
//            answerView4.isHidden = false
//            newQuestionButton.isHidden = false
            quizView.isHidden = false
            materialView.isHidden = true
            
        default:
//            questionView.isHidden = true
//            answerView1.isHidden = true
//            answerView2.isHidden = true
//            answerView3.isHidden = true
//            answerView4.isHidden = true
//            newQuestionButton.isHidden = true
            quizView.isHidden = true
            materialView.isHidden = false
        }
        
    }
    
    @IBAction func newQuestionAction(_ sender: UIButton) {
        var question = ""
        var answer1 = ""
        var answer2 = ""
        var answer3 = ""
        var answer4 = ""
        
   

        question = questionTF.text ?? ""
        answer1 = answerTF1.text ?? ""
        answer2 = answerTF2.text ?? ""
        answer3 = answerTF3.text ?? ""
        answer4 = answerTF4.text ?? ""
        
        array.append(Question(question: question, trueAnswer: answer1))
        
        print(array)
        
        questionTF.text = ""
        answerTF1.text = ""
        answerTF2.text = ""
        answerTF3.text = ""
        answerTF4.text = ""
        
        
    }
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
    }
    
    
    
}
