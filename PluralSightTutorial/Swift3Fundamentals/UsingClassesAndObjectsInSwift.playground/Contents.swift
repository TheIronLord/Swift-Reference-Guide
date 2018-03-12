// Defining Classes

// Defining and Instatiating Classes
class Appliance {
    // properties
    var manufacturer: String
    var model: String
    var voltage: Int
    var capacity: Int?
    
    // initializer
    init() {
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = 120
    }
    
    // additional initializer
    init(withVoltage: Int) {
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = withVoltage
    }
    
    // deinitializer - only allowed in a class
    deinit {
        // perform cleanup code here...
        // release a file resource...
        // release a network resource...
    }
    
    // methods
    func getDetails() -> String {
        var message = "This is the \(self.model) from \(self.manufacturer)."
        if self.voltage >= 220 {
            message += " This model is for European usage."
        }
        return message
    }
}

var cafetiere = Appliance(withVoltage: 220)
cafetiere.manufacturer = "Megappliance EU"
cafetiere.model = "Electrotiere"
print(cafetiere.getDetails())
// ...later, create an instance of Appliance
var kettle = Appliance()
kettle.manufacturer = "Megappliance, Inc"
kettle.model = "TeaMaster 5000"
kettle.voltage = 120
print(kettle.getDetails())



// Revisiting classes and structs
struct ApplianceStruct {
    // properties
    var manufacturer: String
    var model: String
}

// create a new instance - struct has memberwise initializer which classes do not have
var toast = ApplianceStruct(manufacturer: "AcmeCorp", model: "Toastmaic")

// classes support inheritance and structs do not
// structs and enums are value types where classes are reference types
// if you assign a struct or enum to a variable, constant or function the value is COPIED
// if you assign a class to a variable, constant or function the reference is passed and any changes in them will change the class

// Values vs. Reference

// a Swift String is a struct- a value type
var firstString = "This is some text"

// if I assign, it's a copy...
var secondString = firstString

// so a change to the second string
secondString += " with some more text added on."
print(secondString)

// does not affect the other
print(firstString)

class Message{
    var interalText: String = "This is some text"
}

// create a new instance
var firstMessage = Message()

// if I assign, it's a reference to the original instance
var secondMessage = firstMessage

secondMessage.interalText += " with some more text added on."

// print both
print(firstMessage.interalText)
print(secondMessage.interalText)

// are they referring to the same thing?
if firstMessage === secondMessage {
    // identity operator (===) only works with CLASSES
    print("Yes - they are references to the same instance")
}

// if you define a class as a constant you can change the internal variables if they are a var but cannot make the object point to a new reference
// if yo define a struct as a constant everything inside the struct will be a constant



// Implementing Inheritance and Overriding Methods
// Inheritance
class ApplianceInheritance {
    var make: String
    var model: String
    init() {
        self.make = "default"
        self.model = "default"
    }
    final func printDetails() {
        print("Make: \(self.make) \nModel: \(self.model)")
    }
}

// define a new class
class Toaster: ApplianceInheritance {
    // new property
    var slices: Int
    
    override init() {
        self.slices = 2
        super.init()
    }
    
    // new method
    func toast() {
        print("Irradiating now...")
    }
}

var myToaster = Toaster()
myToaster.make = "AcmeCorp"
myToaster.model = "Carbonizer"
myToaster.printDetails()
myToaster.toast()



// Adding Functionality with Extensions
extension String {
    func removeSpaces() -> String {
        let filteredCharacters = self.characters.filter { $0 != " " }
        return  String(filteredCharacters)
    }
}
 // Strings
let album = "Decks and drums and rock and roll"
let scriptio = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet"
let phrase = "Love is now here"

print(album.removeSpaces())
print(scriptio.removeSpaces())
print(phrase.removeSpaces())



// Using Computed Properties
//Stored Properties: Class, Struct, Enum

// Adding Computed Properties
class Player {
    // stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
    //computed property - let is not allowed with computed properties
    var score: Int {
        return (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
    }
    
    init(name: String) {
        self.name = name
        self.livesRemaining = 3
        self.enemiesDestroyed = 0
        self.penalty = 0
        self.bonus = 0
    }
}

// create Player
let newPlayer = Player(name: "Ava")

// as the game progresses, values change...
newPlayer.enemiesDestroyed = 326
newPlayer.penalty = 872
newPlayer.bonus = 25000


print("The final score is: \(newPlayer.score)")
