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
    @IBOutlet weak var progressView: UIProgressView!
    
    let questionAnswerArray = [
        ["Four + two is six", "True"],
        ["Four is less than 3", "False"],
        ["2 * 2 is 4", "True"]
    ]
    
    var questionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func onAnswerPressed(_ sender:UIButton) {
        
        let userAnswer = sender.currentTitle
        let wrightAnswer = questionAnswerArray[questionIndex][1]
        
        if userAnswer == wrightAnswer{
            print("Wright Answer")
        } else {
            print("Wrong answer")
        }
        
        proceedToNextQuestion()
    }
    
    func proceedToNextQuestion(){
        questionIndex = (questionIndex + 1) % questionAnswerArray.count
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = questionAnswerArray[questionIndex][0]
    }


}

