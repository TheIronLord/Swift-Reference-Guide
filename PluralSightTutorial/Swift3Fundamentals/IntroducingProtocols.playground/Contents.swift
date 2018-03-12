// Introducing Protocols
class Player: CustomStringConvertible {
    // stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
    var description: String {
        return "Player \(self.name) has a score of \(self.score) and \(self.livesRemaining) lives remaining"
    }
    // computed property
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

// create two Player instances
let p1 = Player(name: "Ava")
let p2 = Player(name: "Mason")

// as the game progresss, values change...
p1.enemiesDestroyed = 326
p2.enemiesDestroyed = 292
p1.penalty = 872
p2.penalty = 712
p1.bonus = 25000
p2.bonus = 32000

//print both instances
print(p1)
print(p2)


// Define a protocol
protocol MyProtocol {
    // what methods are required?
    func showMessage()
    
    // what properties?
    var name: String{ get }
}

// now adopt it
struct MyStruct: MyProtocol {
    // now, conform to it
    func showMessage() {
        print("Now conforming...")
    }
    var name: String {
        return "Sebastiano"
    }
}



//Defining and Handling Errors in Swift
enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

// use it
func checkStatus(serverNumber: Int) throws -> String {
    switch serverNumber {
    case 1:
        print("You have no connection.")
        throw ServerError.noConnection
    case 2:
        print("Authentication failed.")
        throw ServerError.authenticationRefused
    case 3:
        print("Server 3 is up and running!")
    default:
        print("Can't find that server.")
        throw ServerError.serverNotFound
    }
    return "Success"
}

// handle it
do {
    let result = try checkStatus(serverNumber: 1)
    print(result)
} catch ServerError.noConnection {
    print("No connection. Please try again.")
} catch ServerError.authenticationRefused {
    print("Authentication error. please check your username and password")
} catch {
    print("This problem is: \(error) ")
}

if let result = try? checkStatus(serverNumber: 1){
    print(result)
}



// Using Guard and Defer

func guardString(newString: String?) {
    guard let unwrappedString = newString else{ return }
    print(unwrappedString)
}
var optionalString: String?
optionalString = "Has a value"
guardString(newString: optionalString)

//defer is used to clean up code so whenever a function exits the code inside the defer will run
