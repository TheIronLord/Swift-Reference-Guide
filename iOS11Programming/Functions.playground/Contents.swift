import UIKit
import CoreGraphics

//Void Return Type and Parameters
func say1(_ s:String)-> Void{ print(s) }
func say2(_ s:String)->(){ print(s) }
func say3(_ s:String){ print(s) }

//Functions without parameters
func greet1()-> Void{ print("howdy") }
func greet2()->(){ print("howdy") }
func greet3(){ print("howdy") }

//External Parameter Names
func echoString(_ s:String, times:Int)->String{
    var result = "";
    for _ in 1...times {
        result += s
    }
    return result
}
func echo(string s:String, times n:Int) -> String{
    var result = ""
    for _ in 1...n {
        result += s
    }
    return result
}

//Overloading
func say() -> String{ return "one" }
func say() -> Int{ return 1 }

func giveMeAString(_ s:String){
    print("Thanks")
}
giveMeAString(say())
let result1 = say() + " two"
let result2 = say() + 1

//Default Parameter Values
class Dog{
    func say(_ s:String, times:Int = 1){
        for _ in 1...times{
            print(s)
        }
    }
}
let d = Dog();
d.say("Woof")
d.say("Woof", times:3)

//Variadic Parameters
func sayStrings(_ arrayOfStrings:String ...){
    for s in arrayOfStrings{
        print(s)
    }
}
sayStrings("hey", "ho")

print("Manny", 3, true)
print("Manny", "Moe", separator:", ", terminator:", ")
print("Jack")

//Ignored Parameters
func say(_ s:String, times:Int, _:Bool){
    for _ in 1...times{
        print(s)
    }
}
say("Hello", times:3, true)

//Modifiable Parameters
func say(_ s:String, times:Int, loudly:Bool){
    //loudly = true ERROR: Cannot assign parameter variable
    var loudly = loudly
    loudly = true
    print(loudly)
}
 
func removeCharacter(_ c:Character, from s:String)->Int{
    var s = s
    var howMany = 0
    while let ix = s.index(of: c){
        s.remove(at:ix)
        howMany += 1
    }
    return howMany
}
let s = "Hello"
let result = removeCharacter("l", from:s)
print(s)

func removeCharacter(_ c:Character, from s: inout String) -> Int{
    var howMany = 0
    while let ix = s.index(of:c){
        s.remove(at:ix)
        howMany += 1
    }
    return howMany
}
var s2 = "Hello"
let result3 = removeCharacter("l", from:&s2)
print(s2)

let c = UIColor.purple
var r : CGFloat = 0
var g : CGFloat = 0
var b : CGFloat = 0
var a : CGFloat = 0

c.getRed(&r, green: &g, blue: &b, alpha: &a)
print(r, g, b)

class DogMod {
    var name = ""
}
func changeName(of d:DogMod, to newName:String){
    d.name = newName
}
let dM = DogMod()
dM.name = "Fido"
print(dM.name)
changeName(of:dM, to:"Rover")
print(dM.name)

