//
//  LecturerHistoryVC.swift
//  dorra
//
//  Created by Yohan Wongso on 20/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class LecturerHistoryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var historyCV: UICollectionView!
    @IBOutlet weak var termTextField: UITextField!
    
    var termList: [String] = ["sem 1", "sem 2", "sem 3"]
    var courseName: [String] = ["Data Structure", "Database System", "Object Oriented", "Computer Network"]
    var totalClass: [Int] = [22, 16, 8, 10]
    var cellColor: [UIColor] = [#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return courseName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = historyCV.dequeueReusableCell(withReuseIdentifier: "historyCell", for: indexPath) as! HistoryCollectionViewCell
        
        cell.courseNameLabel.text = courseName[indexPath.row]
        cell.totalClassLabel.text = String(totalClass[indexPath.row])
        cell.backgroundColor = cellColor[1]
        
        return cell
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return termList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return termList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        termTextField.text = termList[row]
    }
    
    func createPickerView() {
           let pickerView = UIPickerView()
           pickerView.delegate = self
           termTextField.inputView = pickerView
    }
    
    func dismissPickerView() {
       let toolBar = UIToolbar()
       toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
       toolBar.setItems([button], animated: true)
       toolBar.isUserInteractionEnabled = true
       termTextField.inputAccessoryView = toolBar
    }
    
    @objc func action() {
          view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.historyCV.dataSource = self
        self.historyCV.delegate = self
        
        createPickerView()
        dismissPickerView()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    @IBAction func termTextFieldEditingDidEnd(_ sender: UITextField) {
        self.historyCV.reloadData()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}