//
//  questionListVC.swift
//  dorra
//
//  Created by Adella Amanda on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation

class questionListVC {

        var list = [questionTableViewController]()
    
    init(){
        list.append(questionTableViewController(questionText: "2x + 6 = 10 What is the value of x?", choiceA: "A. (5)", choiceB: "B. (6)",
                                                choiceC: "C. (7)", choiceD: "D. (8)", answer: 1))
        
        list.append(questionTableViewController(questionText: "If 102y = 25, then 10-y equals: ...", choiceA: "A. (5/3)", choiceB: "B. (1/6)",
                                                choiceC: "C. (1/5)", choiceD: "D. (8/2)", answer: 3))
        
        list.append(questionTableViewController(questionText: "If y=10x − 1 and the value of x is 10, what is the value of y?", choiceA: "A. (79)", choiceB: "B. (89)",
                                                choiceC: "C. (99)", choiceD: "D. (109)", answer: 3))
              
        list.append(questionTableViewController(questionText: "If (0.2)x = 2 and log 2 = 0.3010, then the value of x to the nearest tenth is:...", choiceA: "A. (1.4)", choiceB: "B. (2.4)",
                                                choiceC: "C. (0.4)", choiceD: "D. (-0.4)", answer: 4))
       
        list.append(questionTableViewController(questionText: "How many months are there in twelve years?", choiceA: "A. (154)", choiceB: "B. (144)",
                                                choiceC: "C. (145)", choiceD: "D. (160)", answer: 2))

}
}
