import UIKit

// Optionals
var age: Int? = nil // Holds nothing

age = 38

// Unwrapping optionals
var name: String? = nil
name = "Jason"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name...")
}

// Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

greet(nil)

// Force unwrapping
let str = "5"
let num = Int(str)!

// Implicity unwrapped optionals
let age2: Int! = nil
/* Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time. */
// Better idea to just use regular optionals.

// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let uzer = username(for: 1) ?? "Anonymous"

// Optional chaining
let names = ["James", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// Optional try
// Previous way of doing thigns without optionals.
enum Password: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw Password.obvious
    }
    return true
}

//do {
//    try checkPassword("password")
//    print("This password is good!")
//} catch {
//    print("You can't use that password")
//}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh")
}

// Failable initializers
struct Persona {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        print(dog.makeNoise())
    }
}

