//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var secondRemaining = 60
    let eggTimes = ["Soft":300, "Medium":420, "Hard":720]
    
    ///Create new timer
    var timer = Timer()

    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        ///Stop the previous timer
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        secondRemaining = eggTimes[hardness]!

        ///Argument "#selector"  refers to instance method "updateTimer()" exposed to Objective-C
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondRemaining>0 {
            print("\(secondRemaining) seconds.")
            secondRemaining-=1
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
        }
    }
}
