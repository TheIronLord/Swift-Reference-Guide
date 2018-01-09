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
