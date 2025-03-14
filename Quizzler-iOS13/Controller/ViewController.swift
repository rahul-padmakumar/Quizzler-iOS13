//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressView:UIProgressView!
    @IBOutlet weak var score: UILabel!
    
    var questionHelper = QuestionHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func onAnswerPressed(_ sender:UIButton) {
        
        let userAnswer: String = sender.currentTitle!
        
        let isAnswerCorrect = questionHelper.checkAnswer(userAnswer)
        
        if isAnswerCorrect{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false){timer in
            self.proceedToNextQuestion()
        }
    }
    
    func proceedToNextQuestion(){
        questionHelper.proceedToNextQuestion()
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = questionHelper.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressView.progress = questionHelper.getProgress()
        score.text = questionHelper.getScrore()
    }
}

