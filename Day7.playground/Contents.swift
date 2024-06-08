import UIKit

// Stucts!
//struct Sport {
//    var name: String
//}
//
//var tennis = Sport(name: "Tennis")
//print(tennis.name)
//
//tennis.name = "Lawn tennis"

// Computed properities
struct Sport {
    var name: String
    var isOlympicSport: Bool
    // computes the property
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.isOlympicSport)

// Property observer
// run code before or after any property changes
// didSet property is used after property has changed
// willSet is used before (rarely used)

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods
// functions inside of structs are called Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City.init(population: 9_000)
let taxes = london.collectTaxes()
print(taxes)

// Mutating method
struct Person {
    var name: String
    
    mutating func makeAnon() {
        name = "Anon"
    }
}

var person = Person(name: "Ed")
person.makeAnon()

// Properties and methods of strings
let string = "Do or do not, there is no try"

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
print(string.contains("red"))

// Properties and methods of arrays
var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anon"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

// Refering to current instance
struct Person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

// Lazy properties
struct FamilyTree {
    init() {
        print("creating family tree")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Jason")
var person2 = Person2(name: "ed")

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let eddy = Student(name: "Ed")
let taylor = Student(name: "Taylor")
let jason = Student(name: "Jason")
print(Student.classSize)


// Access controls
struct Person3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My soical security number is \(id)"
    }
}

let eddee = Person3(id: "12345")
print(eddee.identify())






