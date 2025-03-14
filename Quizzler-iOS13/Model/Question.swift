//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rahul Padmakumar on 14/03/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

struct Question{
    var question: String
    var options: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.options = a
        self.correctAnswer = correctAnswer
    }
}
