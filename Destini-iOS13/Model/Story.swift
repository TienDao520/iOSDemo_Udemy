//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var storyTitle: String
    var storyChoice1: String
    var storyChoice2: String
    var storychoice1Destination: Int
    var storychoice2Destination: Int
    
    init (title: String, choice1: String, choice1Destination:Int, choice2:String, choice2Destination: Int  ) {
        storyTitle = title
        storyChoice1 = choice1
        storychoice1Destination = choice1Destination
        storyChoice2 = choice2
        storychoice2Destination = choice2Destination
    }
}
