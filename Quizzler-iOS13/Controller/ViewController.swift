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
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
                        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    @IBAction func answerPressed(_ sender: UIButton) {
       
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer (userAnswer)
        
        if actualAnswer == userAnswer{
            
        }else {
       
            }

        }
        if questionNumber+1 < quiz.count {questionNumber += 1
        } else {questionNumber=0
            
        }
            updateUI()
    }
    
    func updateUI(){
        questionText.text = quiz[questionNumber].text
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
    
}

