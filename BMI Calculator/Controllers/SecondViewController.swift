//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Tien Dao on 2022-08-18.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor.red
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "Hello \(bmiValue)"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
        
    }
}
