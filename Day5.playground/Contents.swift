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
func add(number: Int) -> Int {
    return number + number
}

let results = add(number: 15)
print(results)

// Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Jason")

// Ommiting parameter labels
func greet(_ person: String) {
    print("Hello \(person)!")
}
greet("Taylor")

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
enum PasswordError: Error {
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
