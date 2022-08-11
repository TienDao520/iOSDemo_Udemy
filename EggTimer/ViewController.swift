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

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondRemaining = eggTimes[hardness]!

        ///Argument "#selector"  refers to instance method "updateTimer()" exposed to Objective-C
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondRemaining>0 {
            print("\(secondRemaining) seconds.")
            secondRemaining-=1
        }
    }
}
