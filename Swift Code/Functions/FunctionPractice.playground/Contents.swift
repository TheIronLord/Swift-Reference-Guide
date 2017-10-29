//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Single Parameter
let jarrod = "Jarrod"

func sayHelloToStudent(student: String){
    print("Hello, \(student)")
}

sayHelloToStudent(student: jarrod)

//Multiple Parameter
func averageScore(firstScore: Double, secondScore: Double, thirdScore: Double){
    let totalScore = firstScore + secondScore + thirdScore;
    print(totalScore/3)
}

averageScore(firstScore: 5.6, secondScore: 4.3, thirdScore: 2.2)

//Return Value
func calculateTip(priceOfMeal: Double)->Double{
    return priceOfMeal * 0.15
}

print(calculateTip(priceOfMeal: 5.00))

func isValidLength(password: String)->Bool{
    if password.characters.count >= 8{
        return true
    }else{
        return false
    }
}

print(isValidLength(password: "harry"))
