//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Francis Yang on 20/08/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    init(q: String, a: [String], correctAnswer: String) {
        text = q 
        answer = a
        self.correctAnswer = correctAnswer
    }
}
