//
//  LectureAddClass.swift
//  dorra
//
//  Created by Dhanaryo Wilson on 22/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LectureAddClass: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    // MARK: period
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return periodList.count
        } else if pickerView.tag == 2{
            return repeatList.count
        } else{
            return remindList.count
        }
      //  return periodList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return "\(periodList[row])"
        } else if pickerView.tag == 2{
            return "\(repeatList[row])"
        } else{
            return "\(remindList[row])"
        }
     //   return periodList[row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
////
//        selectPeriod = periodList[row]
////        selectRepeat = repeatList[row]
////        selectRemind = remindList[row]
////
//        periodTextField.text = selectPeriod
////        repeatTextField.text = selectRepeat
////        remindTextField.text = selectRemind
//    }
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var periodTextField: UITextField!
    @IBOutlet weak var shiftTextField1: UITextField!
    @IBOutlet weak var repeatTextField: UITextField!
    @IBOutlet weak var remindTextField: UITextField!
    @IBOutlet weak var periodPicker: UIPickerView!
    @IBOutlet weak var repeatPicker: UIPickerView!
    @IBOutlet weak var remindPicker: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    
    
    var selectPeriod : String?
    var selectRepeat : String?
    var selectRemind : String?
    var shiftFirst : String?
    var periodList = ["Odd", "Even"]
    var repeatList = ["Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var remindList = ["30 minute before", "hour before"]
    
    func createDatePickerView(){
        let datepickerView = UIDatePicker()
        datepickerView.datePickerMode = .dateAndTime
       datepickerView.addTarget(self, action: #selector(dateChanged(datepickerView:)), for: .valueChanged)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        shiftTextField1.inputView = datepickerView
      //  shiftTextField1.text = datepickerView

    }
    
    @objc func dateChanged(datepickerView: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
          shiftTextField1.text = dateFormatter.string(from:datepickerView.date)
        view.endEditing(true)
    }
//
    func dismissDatePickerView(){
        let toolBar = UIToolbar()
             toolBar.sizeToFit()
             let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
            toolBar.setItems([button], animated: true)
            toolBar.isUserInteractionEnabled = true
            shiftTextField1.inputAccessoryView = toolBar
    }
//
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
//
    func createPickerView() {
           let pickerView = UIPickerView()
           pickerView.delegate = self
           periodTextField.inputView = pickerView
           // repeatTextField.inputView = pickerView
         //   remindTextField.inputView = pickerView
    }
    
    func dismissPickerView() {
       let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
       toolBar.setItems([button], animated: true)
       toolBar.isUserInteractionEnabled = true
       periodTextField.inputAccessoryView = toolBar
     //   repeatTextField.inputAccessoryView = toolBar
     
    //remindTextField.inputAccessoryView = toolBar
    }

    @objc func action() {
            view.endEditing(true)
      }
    

    // UNFINISHED !!
    @IBAction func saveButton(_ sender: UIButton) {
        var title = ""
        var code = ""
        var period = ""
        var shift = ""
        
        title = titleTextField.text ?? ""
        code = codeTextField.text ?? ""
        period = periodTextField.text ?? ""
        shift = shiftTextField1.text ?? ""
        
//        CloudKitHelper().createClassRecord()
//        CloudKitHelper().createClass(title: title, code: code, period: period)
        
        print("work")
        print(shift)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.periodPicker.delegate = self
        self.repeatPicker.delegate = self
        self.remindPicker.delegate = self
        
        createPickerView()
        createDatePickerView()
        dismissPickerView()
        dismissDatePickerView()

}
    
}
