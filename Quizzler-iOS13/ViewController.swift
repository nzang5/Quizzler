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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than one.", answer: "True"),
        Question(text: "Three + Eight is less than ten.", answer: "False")
    ]

    var questionNumber = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAnswer = sender.currentTitle //True or False
        let actualQuestion = quiz[questionNumber]
        let actualAnswer = actualQuestion.answer

        //See if the answer is right
        if userAnswer == actualAnswer{
            print("Correct answer")
        } else{
            print("Wrong answer")
        }

        //See if its the last question
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else{
            questionNumber = 0
        }

        updateUI()
    }

    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
}
