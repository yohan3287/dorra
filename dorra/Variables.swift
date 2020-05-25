//
//  Variables.swift
//  dorra
//
//  Created by Jacob Andrean on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import Foundation
import CloudKit
import UIKit

var titles = [String]()
var recordIDs = [CKRecord.ID]()

var studentAccount: [Students] = []
var lecturerAccount: [Lecture] = []
var asStudent: Bool = true

var courseTitle: String = ""

var arrayToday = [Matkul]()
var arrayTomorrow = [Matkul]()
var arrayAllClass = [Matkul]()

var selectedCourse = Matkul()
struct Matkul {
    var time: String!
    var kelas: String!
    var day: String!
    var type: Int!
}

struct Course {
    var title: String!
    var code: String!
    var shiftStart: Date!
    var shiftEnd: Date!
    var period: String!
    var year: Date!
    var remindMe: Date!
    var repeatRemind: String!
    var duration: Int!
}


var array = [Question]()
struct Question {
    var question: String!
    var trueAnswer: String!
    
    func check(answer: String) -> Bool {
        if answer == trueAnswer {
            return true
        }
        return false
    }
    //array.append(Question(question: text, trueAnswer:))
    
// timer soal pake dispatch ganti
}


extension UIView {

    public func viewController()->UIViewController? {
          var nextResponder: UIResponder? = self
          repeat {
              nextResponder = nextResponder?.next
              
              if let viewController = nextResponder as? UIViewController {
                  return viewController
              }
              
          } while nextResponder != nil
          
          return nil
      }
    
    
}
