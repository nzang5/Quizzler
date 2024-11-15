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
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than one.", "True"],
        ["Three + Eight is less than ten.", "False"]
    ]

    var questionNumber = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAnswer = sender.currentTitle //True or False
        let actualAnswer = quiz[questionNumber][1]

        if userAnswer == actualAnswer{
            print("Correct answer")
        } else{
            print("Wrong answer")
        }
        
        questionNumber += 1
        updateUI()
    }

    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
}

