//
//  questionTableViewController.swift
//  dorra
//
//  Created by Adella Amanda on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation

class questionTableViewController{
    
    var question: String
    var optionA: String
    var optionB: String
    var optionC: String
    var optionD: String
    var correctAnswer: Int
    var optionSelected: Int
    
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int, optSelected: Int) {
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
        optionSelected = optSelected // we need to add this one variable for saving our selected option, and value must be an Int, so we can compare it to the correct one.
    }
}
