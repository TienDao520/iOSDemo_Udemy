//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Tien Dao on 2022-08-11.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNum = 0;
    
    ///"_" in this case is not need external parameter name
    ///userAnswer is internal parameter name
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNum].answer{
            //user got it right
            return true
        } else {
            //user got it wrong
            return false
        }
    }
    func getQuestionText() -> String{
        return quiz[questionNum].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNum) / Float(quiz.count)
        return progress
    }
    
    ///And what this tells the computer is that when this function is run, it will replace the old value of
    /// questionNumber with a new value.
    /// So every time you create a struct, and inside one of the functions or one of its capabilities, you need
    mutating func nextQuestion() {
        if questionNum + 1 < quiz.count {
            questionNum += 1
        } else {
            questionNum = 0
        }
    }
}
