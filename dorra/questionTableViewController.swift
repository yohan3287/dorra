//
//  questionTableViewController.swift
//  dorra
//
//  Created by Adella Amanda on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation

class questionTableViewController{
    
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
   init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
    question = questionText
    optionA = choiceA
    optionB = choiceB
    optionC = choiceC
    optionD = choiceD
    correctAnswer = answer
    
}
}
