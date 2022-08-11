//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    let eggTimes = ["Soft":3, "Medium":420, "Hard":720]
    
    var totalTime = 0
    var secondsPassed = 0
    
    ///Create new timer
    var timer = Timer()

    ///player for Audio
//    var player = AVAudioPlayer()
    
    ///Updating AVAudioPlayer initialisation
    var player : AVAudioPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {

        
        ///Stop the previous timer
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness

        ///Argument "#selector"  refers to instance method "updateTimer()" exposed to Objective-C
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed+=1
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            print(percentageProgress)
            progressBar.progress = Float(percentageProgress)
            print(Float(percentageProgress))
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
