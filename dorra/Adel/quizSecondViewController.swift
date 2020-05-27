//
//  quizSecondViewController.swift
//  dorra
//
//  Created by Adella Amanda on 19/05/20.
//  Copyright © 2020 MC2G7. All rights reserved.
//

import UIKit

class quizSecondViewController: UIViewController {
    
    @IBOutlet weak var indexColletion: UICollectionView!
    
    //question component
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerD: UIButton!
    
    @IBOutlet weak var buttonText: UIButton!
    
    @IBOutlet weak var quizQuestion: UIView!
    @IBOutlet weak var questionNumber: UILabel!
    
    let allQuestion = questionListVC()
    var questionNumbers: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    // collection view array
    var numberArray = ["1", "2", "3" ,"4", "5", "6", "7", "8" ,"9", "10", "11", "12", "13", "14", "15"]
    

    
    
    
    //question
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateUI()
        updateQuestion()
        
        answerA.layer.cornerRadius = 15
        answerB.layer.cornerRadius = 15
        answerC.layer.cornerRadius = 15
        answerD.layer.cornerRadius = 15
        
       
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if questionNumbers == questionListVC().list.count - 1{
            buttonText.setTitle("Finish", for: .normal)
            performSegue(withIdentifier: "toResult", sender: nil)
        }
        
        
//        @IBAction private func locationRightButton(_ sender: AnyObject) {           let visibleItems: NSArray = self.locationsCollectionView.indexPathsForVisibleItems as NSArray           let currentItem: IndexPath = visibleItems.object(at: 0) as! IndexPath           let nextItem: IndexPath = IndexPath(item: currentItem.item + 1, section: 0)             if nextItem.row < storedLocationsData.count {               self.locationsCollectionView.scrollToItem(at: nextItem, at: .left, animated: true)                         }                }

        
        
        updateQuestion()
        updateUI()
        
        
    }
    // collection view
    func setupUI() {
        indexColletion.register(UINib(nibName: "MyCell", bundle: nil), forCellWithReuseIdentifier: "myCellID")
        indexColletion.reloadData()
    }
    // questions
    func updateQuestion(){
        
        if questionNumbers <= allQuestion.list.count - 1{
            
            questionLabel.text = allQuestion.list[questionNumbers].question
            answerA.setTitle(allQuestion.list[questionNumbers].optionA, for: UIControl.State.normal)
            answerB.setTitle(allQuestion.list[questionNumbers].optionB, for: UIControl.State.normal)
            answerC.setTitle(allQuestion.list[questionNumbers].optionC, for: UIControl.State.normal)
            answerD.setTitle(allQuestion.list[questionNumbers].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestion.list[questionNumbers].correctAnswer
            
        }
      
        updateUI()
    }
    
    @IBAction func selectingAnswer(_ sender: UIButton) {
        print(sender.tag)
        allQuestion.list[questionNumbers].optionSelected = sender.tag
    }
    
    
    func updateUI(){
        
//        scoreLabel.text = "Score: \(score)"
        questionNumber.text = "\(questionNumbers+1). "
       

        // Update UI based on the selected option
    }
    func restartQuiz(){
        score = 0
        questionNumbers = 0
        updateQuestion()
    }
}
// collection view
extension quizSecondViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allQuestion.list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "myCellID", for: indexPath) as? MyCell)!
        cell.numberLabel.text = numberArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected index : \(indexPath.row + 1)")
        questionNumbers = indexPath.row
        updateQuestion()
        
        if questionNumbers == questionListVC().list.count - 1{
            buttonText.setTitle("Finish", for: .normal)
            
        }
    }
}


