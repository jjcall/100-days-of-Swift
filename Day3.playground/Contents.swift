import UIKit

// Operators
// Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

// Modulo
let remainder = 13 % secondScore


// Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

// join strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

// join arrarys
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Compound assignment operators

var score = 95
score -= 5

// w/ strings
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Comparison operators
let firstScore2 = 6
let secondScore2 = 4

firstScore2 == secondScore2
firstScore != secondScore2
firstScore2 < secondScore2
firstScore2 >= secondScore2

// string comparison is base don natural alphabelitcal order
"Taylor" <= "Swift"

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Lucky")
} else if firstCard + secondCard == 21{
    print("Blackjack!")
} else {
    print("sorry jack")
}

// Combining conditions
let age1 = 12
let age2 = 21
// AND
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// OR
if age1 > 18 || age2 > 18 {
    print("Both are over 18")
}

// Ternary operator
let firstCard1 = 11
let secondCard1 = 10

print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

// Switch statements
let weather = "rain"

switch weather {
case "rain":
    print("Bring umbrella")
    fallthrough
case "snow":
    print("Wrap up warm")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// Range operators
let score2 = 84

switch score2 {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did Ok.")
default:
    print("You did great!")
}
