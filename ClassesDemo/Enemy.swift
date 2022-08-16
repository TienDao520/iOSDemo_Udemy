//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Tien Dao on 2022-08-16.
//

import Foundation

class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
