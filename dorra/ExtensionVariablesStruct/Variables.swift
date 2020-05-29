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

//Date
let currentDate = Date()
let dateFormatter = DateFormatter()
var dateComponent = DateComponents()

var titles = [String]()
var recordIDs = [CKRecord.ID]()

var isComplete = [false,false,false,false,false]

var studentAccount: [Students] = []
var lecturerAccount: [Lecture] = []
var asStudent: Bool = true

var courseTitle: String = ""

var arrayToday = [Matkul]()
var arrayTomorrow = [Matkul]()
var arrayAllClass = [Matkul]()

var arrayToday2 = [Course]()
var arrayTomorrow2 = [Course]()
var arrayAllClass2 = [Course]()

var selectedCourse = Matkul()
struct Matkul {
    var time: String!
    var kelas: String!
    var day: String!
    var type: Int!
}

struct Course {
    var title: String
    var code: String
    var shift: Date
    var period: String
//    var remindMe: Date
    var day: String
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

var status2: Bool = false
var currentName: String = ""
var currentTitle: String = ""
var currentUniversity: String = ""
var currentPhone: String = ""
var currentEmail: String = ""
