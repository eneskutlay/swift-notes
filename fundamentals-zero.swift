import UIKit

// Data types Int, Float, Double, String, Character, Bool


// Constants and Variables
// maximum number -> Constants can’t be changed after it’s set
let maximumNumberOfLoginAttempts = 10
// Initial value  of 0 -> Veriables
var currentLoginAttempt = 0
// Declare multiple constants or veriables on a single line
var x = 0, y = 1, z = 0


// Type Annotations
// It’s rare that you need to write type annotations in practice.
let rootUserName: String
rootUserName = "Enes"
let rootUserId: Int = 111
print ("Root user name is \(rootUserName)") //String Interpolation
//Nil -> valueless
// You can’t use nil with non-optional constants and variables.
// return automatically set to 'nil'
var rootIsActive: Bool?
rootIsActive = true
// Tuples
// Tuples group multiple values into a single compound value
let currentStatus = (statusCode: 401, statusMessage: "Unauthorized")
print("\(currentStatus.statusMessage) status code \(currentStatus.statusCode)")


/*
 Mutability of Collections
 Heterogeneous collection literal could only be inferred to '[Any]';
 add explicit type annotation if this is intentional
 var someStuff = ["one", 2, true, 42.0] as [Any]
*/
var activeUsersId: [Int] = [rootUserId, 112, 113, 114]
print("Already \(activeUsersId.count) users is active")
// (3 elements) ["OK", "OK", "OK"]
var allStatusResult = Array(repeating: "OK", count: 3)
// its now an empty array, but is still of type [String]
allStatusResult = []
print(type(of: allStatusResult))
// some code :(
if activeUsersId.isEmpty {
    print("No active users")
} else {
    for usersId in activeUsersId {
        print(usersId)
        //111
        //112
        //113
        //114
    }
}

// Sets
// set stores distinct values of the same type in a collection with no defined ordering
// Actually, the activeUserId array should be a set. Because IDs are unique.
// var activeUsersName = Set<Character>() of type Set<Character> with 0 items.
var activeUsersName: Set = ["root", "john","doe","swift"] //not listed
// activeUsersName = [] its now an empty array, but is still of type Set<String>
// READ Performing Set Operations



/*
 Dictionaries
 A dictionary stores associations between keys of the same type and values
 of the same type in a collection with no defined ordering.
 */

// Creating an Empty Dictionary
var activeUsersNameOfId: [Int: String] = [:]
activeUsersNameOfId = [111:"root", 112:"john", 113:"doe", 114:"swift",]

for (activeUserId, activeUserName) in activeUsersNameOfId {
    print("\(activeUserName) id's \(activeUserId)")
}

let buffUserId = [Int](activeUsersNameOfId.keys)
let buffUserName = [String](activeUsersNameOfId.values)
