//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
                        
   var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    @IBAction func answerPressed(_ sender: UIButton) {
       
        let userAnswer = sender.currentTitle!
        let userIsCorrect = quizBrain.checkAnswer (userAnswer)
        
        if userIsCorrect{
            sender.backgroundColor = UIColor.green
        }else {
        sender.backgroundColor = UIColor.red
            }
        quizBrain.nextQuestion()

       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
    }
   
    

    
   @objc func updateUI(){
    questionText.text = quizBrain.getQuestionText()
    progressBar.progress = quizBrain.getProgress()
    trueButton.backgroundColor = UIColor.clear
    falseButton.backgroundColor = UIColor.clear
    buttonOne.backgroundColor = UIColor.clear
    scoreLabel.text = "Score:\(quizBrain.getScore())"
    buttonOne.setTitle(quizBrain.getMC(0), for: .normal)
    trueButton.setTitle(quizBrain.getMC(1), for: .normal)
    falseButton.setTitle(quizBrain.getMC(2), for: .normal)
    }
    
}


