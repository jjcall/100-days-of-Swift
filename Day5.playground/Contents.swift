import UIKit

// Functions
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

// Func w/ Params
func square(number: Int) {
    print(number * number)
}

square(number: 8)

// Returning values
func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

let results = add(number1: 10, number2: 14)
print(results)

// Parameter labels
func sayHello(to name: String) { // to is an external param that maps to name.
    print("Hello, \(name)!")
}
sayHello(to: "Jason")

// Ommiting parameter labels
func greet(_ person: String) { // _ allows to not specify the param name when calling the function.
    print("Hello \(person)!")
}
greet("Taylor") // no param specified and defaults to internal param. In this case thats person.

// Default params
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)

// Variadic functions
print("Hater", "gonna", "hate")

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square2(numbers: 1, 2, 3, 4, 5)

// Writing throwing functions
enum PasswordError: Error { //this has to be an existing error type in swift.
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout params
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
