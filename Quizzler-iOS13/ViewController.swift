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
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNum = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNum][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNum + 1 < quiz.count {
            questionNum += 1
        } else {
            questionNum = 0
        }
        updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNum][0]
    }
    
}

