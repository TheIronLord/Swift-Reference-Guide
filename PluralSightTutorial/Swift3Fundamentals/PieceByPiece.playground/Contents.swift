//Understanding Variables in Swift
//Making variables
var playerName = "Alice"        //This is a String
var age = 21                    //This is an Int
var temperature = 72.6          //This is a Float
var activeMembership = true     //This is a boolean

//var bonusScore    ERROR: You need to instantiate the variable when declaring it
//Example of declaring variables with Type Annotation
var bonusScore: Int
var environmentName: String
var levelCompleted: Bool
var progrssPercentage: Double



//Constants: Why They're Important
//Declaring a constant
let minutesInAWeek = 10080
let todaysHighTemperature: Float

func simpleFunction(){
    //Makes a new variable
    let message = "This is a simple message"
    
    //Use it
    print(message)
}

//Constants do not require values at compile time -
//they can be calculated at runtime
let currentMonth: String
let todaysTemperature: Float
let maximumPixelWidth: Int
let maximumPixelHeight: Int

//... but they MUST be initialized before being used
// print(currntMonth)   ERROR: not initialized variable being used



//Introducing Operators
//++ and -- NOT SUPPORTED IN SWIFT



//Converting in Swift: When It Happens (And When It Doesnt)
let a = 5   //a is an Int
let b = 2   //b is an Int

let myResult = a / b    //myResult is an Int

type(of: myResult)


let aD = 5.0   //a is an Double
let bD = 2.0   //b is an Double

let myResultD = aD / bD    //myResult is an Int

type(of: myResultD)


var score = 1           //score is an Int
var highScore = 100.0   //highScore is a Double

//highScore = score as Double   ERROR: cannot assign type Int to type Double



//Making Conversion Happen
var scoreConversion = 1   // type inferred as Int
var highScoreConversion = 100.0   // type inferred as Double

highScoreConversion = Double(scoreConversion)



//Optionals - An Introduction
//Traveler information

var firstName: String
var middleName: String?
var lastName: String

var email: String
var secondaryEmail: String?

var daysUntilNextTrip: Int?

//later...
daysUntilNextTrip = 7

//later, remove any value
daysUntilNextTrip = nil

//even later...
daysUntilNextTrip = 1

//remove it again...
daysUntilNextTrip = nil

//firstName = nil   ERROR: cannot do this because firstName is not an Optional String



//Unwrapping Optionals
var regularInt: Int
var optionalInt: Int?

regularInt = 100
optionalInt = 100

//can set to nil
optionalInt = nil

//later, perform some operation
regularInt = regularInt + 5

//check for nil
/*if optionalInt != nil{
    //this is "forced unwrapping"
    var unwrappedInt = optionalInt!
    unwrappedInt = unwrappedInt + 50
    print(unwrappedInt)
}*/

//this is "optional binding"
if let unwrappedInt = optionalInt{
    print(unwrappedInt)
} else{
    // there's no value...
}



//Creating and Using Arrays
// making a variable array of Strings
var musicalModes = ["Ionian", "Dorian", "Phrygian", "Lydian", "Mixolydian", "Minor"]

// make a constant array of Ints
let speedLimits = [15, 25, 30, 35, 40, 45, 50 , 55, 70, 75]

// what's at index 0?
let initialMode = musicalModes[0]

//change the string at index 5
musicalModes[5] = "Aeolian"

// add a new element
musicalModes.append("Locrian")

// remove an element
let removedElement = musicalModes.removeLast()

// Type annotation for Array of Strings
var myStringArray: [String] = []
// type annotation for Array of Ints
var myIntArray: [Int] = []
