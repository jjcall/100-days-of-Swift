import UIKit

// Protocols
/* Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol. */

protocol Identifiable { // This is description and you can't create an instance directly.
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// Create a protocol to inherit from all of them.
protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let otherNumber = 9
otherNumber.isEven

// Protocol Extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// Protocol oriented programming
protocol WhoAreYou {
    var id: String { get set }
    func identify()
}

extension WhoAreYou {
    func identify()  {
        print("My ID is \(id)")
    }
}
    
struct Person: WhoAreYou {
    var id: String
}

let twostraws = Person(id: "twostraws")
twostraws.identify()
