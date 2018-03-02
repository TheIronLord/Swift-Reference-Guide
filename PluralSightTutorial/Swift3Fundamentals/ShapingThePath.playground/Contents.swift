//Shaping the Path: Controlling the Flow of Your Code

//The Good Old 'if' Statement and What's Different About It
//Parentheses aren't required
//REQUIRED: Curly Braces
var score = 100

if score > 10{
    print("It's greater than 10")
}else{
    print("It's not greater than 10")
}



//Writing Switch Statements
let volcanoExplosivityIndex: Int    //could be 0 to 8
volcanoExplosivityIndex = 3

// later on...
//YOU DO NOT NEED BREAK STATEMENT
switch volcanoExplosivityIndex {
case 0:
    print("Effusive")
case 1:
    print("Gentle")
    print("NOTE: expect a plume of < 1 km")
case 2:
    print("Explosive")
case 3:
    print("Catastrophic")
case 4:
    print("Cataclysmic")
    print("NOTE: the 2010 eruption of eklhrwoihrwo")
case 5:
    print("Paroxysmic")
case 6:
    print("Colossal")
case 7:
    print("Super-colossal")
case 8:
    print("Mega-colossal")
    print("NOTE: 😱😱😱😱😱")
default:
    print("Not a recognized index.")
}

var levelNumber = 3

switch levelNumber{
case 1...3:
    print("Beginner level")
case 4,5,6:
    print("Intermediate level")
case 7,8:
    print("Advanced level")
default:
    print("Incorrect level!")
}



//Creating Loops and Making Ranges
let bunchOfWords = ["Mellifluous", "Bioluminescent", "Kerfuffle", "Nemophilist", "Meliorism", "Defenestration"]

//for word in bunchOfWords {
//    print(word)
//}

for number in 0...10{
    print(number)
}

for number in stride(from: 100, through: 0, by: -5){
    print(number)
}



//String Interpolation
//Example of String Concatenation
let fName = "Payton"
let lName = "Emery"

let fullName = fName + " " + lName
print(fullName)

//Example of String Interpolation

//some example data
var trackName = "Ambre"
var artistName = "Nils Frahm"
var duration = 228

//...
let message = "Now playing \(trackName) by \(artistName) which is \(duration / 60)m \(duration % 60)s long"
print(message)
