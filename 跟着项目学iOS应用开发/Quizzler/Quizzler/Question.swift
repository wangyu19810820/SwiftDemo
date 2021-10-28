//
//  Question.swift
//  Quizzler
//
//  Created by wang yu on 2021/10/25.
//

import UIKit

class Question: NSObject {

    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
