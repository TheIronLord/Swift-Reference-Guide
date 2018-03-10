// Enumerations

var itemTitle = "Middlemarch"

enum MediaType {
    case book, movie, music, game
}

var itemType: MediaType
itemType = MediaType.book

// ...later
itemType = MediaType.movie
// ...or
itemType = .game

switch itemType{
case .movie:
    print("I've been watching \(itemTitle)")
case .music:
    print("I've been listening to \(itemTitle)")
case .book:
    print("I've been reading \(itemTitle)")
case .game:
    print("I've been playing \(itemTitle)")
}



// Enumerations: Raw Values
enum BottleSize: String {
    case half = "37.5 cl"
    case standard = "75 cl"
    case magnum = "1.5 litres"
    case jeroboam = "3 litres"
    case rehoboam = "4.5 litres"
    case methuselah = "6 litres"
    case balthazar = "12 litres"
}
var myBottle: BottleSize = .jeroboam
print("Your \(myBottle) is \(myBottle.rawValue)")



// Enumerations: Associated Values
enum MediaTypeAssociated {
    case movie(String)
    case music(Int)
    case book(String)
}

var firstItem: MediaTypeAssociated = .movie("Comedy")
var secondItem: MediaTypeAssociated = .music(120)



// Defining and Using Structs
struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    //methods
    func summary() -> String {
        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)"
    }
}

var first = Movie(title: "Arrival", director: "Denis Villeneuve", releaseYear: 2016, genre: "Science Fiction")

var second = Movie(title: "Sing Street", director: "John Carney", releaseYear: 2017, genre: "Comedy Musical")

print(first.title)
print(second.title)
second.releaseYear = 2016

print(first.summary())
print(second.summary())



// Working With Dictionaries
// Dictionaries
var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific"]

// use [ ] to look up a key
if let result = airlines["SWA"] {
    print(result)
}

// add or change
airlines["DVA"] = "Discovery Airlines"
airlines

// remove by setting to nil
airlines["BHA"] = nil
airlines

for (key, value) in airlines {
    print(value)
}


// Type Annotation Dictionary
// Dictionary of String keys and String values
var periodicElements: [String: String]

// Dictionary of Int key and String values
var employees: [Int: String]



// Creating and Decomposing a Tuples
//Tuple Example

//Various vars and constants
let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.4"

var basicTuple = (aperture, iso, cameraType)

// can miz literals, constants, variables
var nextTuple = ("String literal!", photoMode, 23124, cameraType)



// Returning a tuple from a function
func randomAlbum() -> (albumTitle: String, length: Int) {
    let title = "And in the endless pause there came the sound of bees"
    let duration = 2462
    return(title, duration)
}

let (nextTitle, length) = randomAlbum()
print("Playing next: \(nextTitle)")
print("Which is: \(length/60)m \(length%60)s")
