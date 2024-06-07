import UIKit

// Closures are anonymous functions.
let driving = {
    print("I'm driving in my car")
}
// called by using the const name with the added ()
driving()

// Adding params to closures.
let driving2 = { (place: String) in
   print("I'm going to \(place) in my car")
}

driving2("London")

// Returning values from closures
let driving3 = { (place: String) -> String in // a String needs be pass as the param
    return "I'm going to \(place) in my car"
}

let message = driving3("London")
print(message)

// Closures as params
let driving4 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I have arrived")
}

travel(action: driving4)

// Trailing closure syntax
func travel1(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I have arrived")
}

travel1() {
    print("Im late") // passing a function at the time of calling
}

// Using closures as parameters when they accept parameters
func travel2(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I have arrived")
}

travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values
func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) in // populated by the param in the travel3 func
    return "I'm going to \(place) in my car."
}

// Shorthand params
func travel4 (action: (String) -> String) {
    print("im getting ready")
    let description = action("London")
    print(description)
    print("I have arrived")
}

// traditional call
travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Swift knows params must be a string
travel4 { place -> String in
    return "I'm going to \(place) in my car"
}

// Swift also knows the closure must return a string
travel4 { place in
    return "I'm going to \(place) in my car"
}

// Since it opnly has one line, you can remove the "return" keyword
travel4 { place in
    "I'm going to \(place) in my car"
}

// Shorthand syntax that lets you go even shorter. Let Swift
// provide automatic naming
travel4 {
    "I'm going to \($0) in my car"
}

// Closures with multiple params.
func travel5( action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 59)
    print(description)
    print("I've arrived")
}

travel5 {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures from functions
func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

// let result = travel6()
// result("London")

// Capturing values
func travel7() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let results = travel7()
// the counter updates as eachone is called.
results("london")
results("london")
results("london")
results("london")
