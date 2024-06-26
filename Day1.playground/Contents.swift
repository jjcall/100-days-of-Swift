import UIKit

var str = "Hello, playground"

// update variable
str = "Goodbye"

// Ints
var age = 38
var population = 8_000_000 // optional formating. just for readability

// Multi-strings
var str1 = // outputs over multiple lines
"""
This goes
over multiple
lines
"""

var str2 = // only formats in editor
"""
This goes \
over multiple \
lines
"""
// Doubles and booleans
var pi = 3.141
var awesome = true

// String interpolation
var score = 85
var str3 = "Your score was \(score)"

var results = "The test results are here: \(str3)"

// Constants
let taylor = "swift"

// Type annotations
// infer types
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

