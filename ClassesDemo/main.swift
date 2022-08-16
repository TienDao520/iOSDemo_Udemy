//
//  main.swift
//  ClassesDemo
//
//  Created by Tien Dao on 2022-08-16.
//

import Foundation

print("Hello, World!")

let skeleton = Enemy()
print(skeleton.health)

//skeleton.move()
//skeleton.attack()


let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane.")
dragon.move()
dragon.attack()
