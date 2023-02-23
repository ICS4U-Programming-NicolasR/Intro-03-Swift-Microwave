//
// Microwave.swift
//
//  Created by Nicolas Riscalas
//  Created on 2023-02-23
//  Version 1.0
//  Copyright (c) 2023 Nicolas Riscalas. All rights reserved.
//
//  Calculates the time needed for a microwave
import Foundation
import Glibc
// Set constants
let pizzaTime = 45
let subTime = 60
let soupTime = 105
var time = 0.0

// Ask for input of the type of food
print("What type of food would you like to heat up? (pizza/sub/soup)")
let foodCase = readLine()!
let food = foodCase.uppercased()
if (food == "PIZZA" || food == "SUB" || food == "SOUP") {
    // ask for the quantity of the amount
    print("What is the quantity of your food?")
    //Try to get the input as a double if the response is nil then print an error
    if let quantity = Int(readLine()!) {
        // If statement to see if the input matches the default values
        if (quantity > 0 && quantity < 4) {
            // Calculate
            let timeMod = Double(((quantity - 1) / 2) + 1)
            if food == "PIZZA" {
                time = Double(pizzaTime)
            } else if food == "SUB" {
                time = Double(subTime)
            } else {
                time = Double(soupTime)
            }
            let totalSec = timeMod * time
            let timeSec = Int(totalSec) % 60
            let timeMin = totalSec / 60
            print(String(format: "The time you need to enter in is \(Int(timeMin)):%02d", timeSec))
        } else {
            print("You can only input a value from 1-3")
        }
    } else {
        // Print error
        print("You entered an invalid type of input you have to input an integer value")
    }
} else {
    print("You have entered an invalid type of food.")
}