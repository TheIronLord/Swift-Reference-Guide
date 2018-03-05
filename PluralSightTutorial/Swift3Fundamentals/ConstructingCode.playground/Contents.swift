// Constructing CodeL ho Does What? - Creating FUnctions

// Creatng Functions
func showMessage(number: Int, name: String){
    var newNumber = number
    print("The function call worked. You passed in the integer: \(number) and the string: \(name)")
}

showMessage(number: 5, name: "Sajjad")



// Returning values from functions
func basicFunction() -> String {
    let str = "This is a simple function."
    print(str)
    return str
}

let result = basicFunction()



// Ignoring Returned Values

// A simple function that returns a value
func calculateValue() -> Int {
    print("Function successfully called")
    return 99
}

_ = calculateValue()



// Customizing Argument Labels

// Omitting Argument Labels

func showMessage(_ message: String){
    print("The text passed in was: \(message)")
}

showMessage("hello")

// Changing Argument Labels
func changeName(from to: String){
    print("\(to)" + "1")
}
changeName(from: "Sajjad")



// Naming Functions
