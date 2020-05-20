//
//  resultTableViewController.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation

struct Results {
    var numbers: String
    var answer: String
    var desc: String
}

struct Quizes {
    var number: Int
    var option: [optionArray]
    var question: String
}

struct optionArray {
    var optionLabel: String
    var isSelected: Bool
}
