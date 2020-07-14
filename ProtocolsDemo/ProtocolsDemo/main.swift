//
//  main.swift
//  ProtocolsDemo
//
//  Created by Kyle Knudson on 7/13/20.
//  Copyright © 2020 Kyle Knudson. All rights reserved.
//
protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg () {
        if isFemale {
            print(" The bird makes a new bird in a shell.")
        }
    }
}
class Eagle: Bird, CanFly {
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
}
class Penguin : Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}
struct FlyingMuseum {
    func flyingDemo(flyingObject : CanFly) {
        flyingObject.fly()
    }
}
struct AirPlane : CanFly{
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}
let myEagle = Eagle()
let myPenguin = Penguin()
let airplane = AirPlane()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: airplane)
