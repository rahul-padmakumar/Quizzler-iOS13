//
//  QuestionHelper.swift
//  Quizzler-iOS13
//
//  Created by Rahul Padmakumar on 14/03/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//
struct QuestionHelper{
    
    let questions =   [
                Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber: Int = 0
    var score: Int = 0
    
    mutating func checkAnswer(_ value: String) -> Bool{
        if value == questions[questionNumber].correctAnswer{
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestion() -> String{
        return questions[questionNumber].question
    }
    
    func getProgress() -> Float{
        return Float(questionNumber + 1)/Float(questions.count)
    }
    
    mutating func proceedToNextQuestion(){
        questionNumber = (questionNumber + 1)%questions.count
        if questionNumber == 0{
            score = 0
        }
    }
    
    func getScrore() -> String {
        return String(score)
    }
    
    func getOptions() -> [String]{
        return questions[questionNumber].options
    }
}
