import UIKit

// Loops
// in a range
let count = 1...10
for number in count {
    print("Number is \(number)")
}

// through an Array
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Player gonna ")
for _ in 1...5 {
    print("play")
}

// While loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not here i come!")

// Repeat loops
// code will run atleast once
var num = 1
repeat {
    print(num)
    num += 1
} while num <= 20
            
print("Ready or not here i come!")
            
// Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("This is super boring, Let's GO!")
        break
    }
    
    countDown -= 1
}

print("Blast off")

// Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

// Infinite loops
var counters = 0

while true {
    print(" ")
    counters += 1
    
    if counters == 273 {
        break
    }
}
