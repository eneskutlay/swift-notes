import UIKit

//Control Flow
// Structure code with branches, loops, and early exits.
// The contents of a Dictionary are inherently unordered,
let rules = ["respectful", "active", "helpful", "honest"]
var i:Int = 0

// For-in Loops
// enumerated() method provides access to the index of each element in a loop through a collection.
// such as an array
for (index, rule) in rules.enumerated() {
    print("Rule \(index): \(rule)!")
}
// or this
for i in 0..<rules.count {
    let rule = rules[i]
    print("Rule \(i): \(rule)!")
}
// or this
for index in 0..<rules.count {
    print("Rule \(index): \(rules[index])!")
}
// The underscore(_) symbol can be used in cases where we don't need any value or element.
for _ in 0..<rules.count {
    print("Hello!")
    //for times return Hello!
}

// While
var index: Int = 0
while index < rules.count {
    print("Rule \(index): \(rules[index])!")
    index += 1
}

// Switch Case
switch index {
case 1,2,3:
    print("index error")
case 4:
    print("loop worked")
    // if add fallthrough return loop worked and loop ready
default:
    print("loop ready")
}

// or use tuples
switch index {
case (1...3):
    print("index error")
case 4:
    print("loop worked")
default:
    print("loop ready")
}


// inactiveUser = 12 return 17 || 20 not retun?
var inactiveUser: Int = 21
if inactiveUser < 20 {
    defer {
        print(inactiveUser)
    }
    inactiveUser += 5
}

// Checking API Availability
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

// for more read
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow


