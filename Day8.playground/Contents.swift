import UIKit

//Classes
// Add final keynword to not allow overriding "final class Dog"
class Dog {
    var name: String
    var breed: String
    
    func makeNoise() {
        print("Woof!")
    }
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
print(poppy.breed)

// inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

// Overwriting methods
let pumbaa = Poodle(name: "pumbaa")
pumbaa.makeNoise()

// Copying objects.
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// Deinitializers
class Person1 {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person = Person1()
    person.printGreeting()
}

// Mutability
class Yeller {
    var name = "Corey Taylor"
}

let corey = Yeller()
corey.name = "Ed Sheeran"
print(corey.name)
