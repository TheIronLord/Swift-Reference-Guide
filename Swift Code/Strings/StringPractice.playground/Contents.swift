//: Playground - noun: a place where people can play

import UIKit

//Printing a String one character at a time
var animal = "octopus"
for character in animal.characters{
    print("\(character)")
}

//Counting a String
let theTruth = "Money can't buy me love"
theTruth.characters.count

//Reversing a String
var forwardString = "spoons"
var charactersReversed = forwardString.characters.reversed()
for characters in charactersReversed{
    print("\(characters)")
}

//String Interpolation
var name = "Sajjad"
var fullName = "\(name) Patel"
print("\(fullName)")

//Define variables
var dogName = "Zebedee"
var lbsPerMonth: Double = 25

//Same string, this time with the variable's inserted
var doggyDiet = "\(dogName) eats \(lbsPerMonth) lbs of dog food per month"
print(doggyDiet)

//We can also use string interpolation with expressions
var kilosInALb = 0.45
var metricDoggyDiet = "\(dogName) eats \(kilosInALb * lbsPerMonth)kilos of dog food per month"
print(metricDoggyDiet)

//Using contains
var happyLand = "HappyLand"
happyLand.contains("Happy")

//Using Replace Occurrence Of
var holidayGreetings = "have a happy holiday"
holidayGreetings.replacingOccurrences(of: "h", with: "H")
