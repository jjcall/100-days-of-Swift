import UIKit

// Arrays
// creating constants
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrsion"
let ringo = "Ringo Starr"

// populating an Array with constants.
let beatles = [john, paul, george, ringo]

// retrieving an item in an Array
beatles[1]

// Sets
// not stored in any order
let colors = Set(["red", "green", "blue"])
// items need to be unique
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// Tuples
// diff from arrays: Cant' add or remove items
// diff from arrays: Can't change type
// diff from arrays: Can't read name or items that don't exist.
var name = (first: "Taylor", last: "Swift")

// access tuples
name.0
name.first

// Arrays vs Sets vs Tuples
// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Ave.", city: "Nashville", state: "TN")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// retrieve item in dictionary by specifying the key.
heights["Taylor Swift"]

// default values
let favoriteIceCream = [
    "Jason": "Cream Puff",
    "Ella": "Lavendar"
]

favoriteIceCream["Jason"]
favoriteIceCream["Ellis"]
favoriteIceCream["Charlotte", default: "Who?"]

// Creating an emtpy collection list (Dictionary)
var teams = [String: String]()
// alternative method
var teams1 = Dictionary<String, Int>()

// Add an item
teams["Paul"] = "Red"

// Create an emtpy array
var results = [Int]()
// alternative method
var results1 = Array<Int>()

// Creating an empty set is done differently
var words = Set<String>()
var numbers = Set<Int>()

// Enumeration
// grouping related values that makes them easy to use
let results3 = "failure"
let results4 = "failed"
let results5 = "fail"

// enums can define a "result type" to solve for this.
enum Result {
    case success
    case failure
}

let result6 = Result.failure

// Enums associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")
let running = Activity.running(destination: "Home")

// Enums raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
