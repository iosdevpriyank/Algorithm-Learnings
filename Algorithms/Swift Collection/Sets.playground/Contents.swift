import UIKit

// Here, Explain here about Sets
// Sets spacially uses for uniquness, no matter what order is

// Gym Entry book system
// Imagine a gym allows only one active entry per person.
// Here, we care about wheater someone is inside or not

var gymMembers = Set(["Priyank", "Akshat", "Amit", "Akshat", "Manisha"])

print(gymMembers) // Order is NOT guaranteed

// Why Set here?
// - No Duplicate entry allowed ("Akshat") ignore if same entry again.
// - Fast Check if somone is inside
// - Order doesn't matter

// Why ".first" feels random

print(gymMembers.first)

// When you ask gym's receptionist who is the first person inside the gym?
// Reply: First according to what? Entry time? Height? Name? Weight?
// There is no orderd define, Let's assume the "Set" is receptionist, any random value return.

// Fast Security Check (contains)

// Airport security wants to know instantly:
// “Is this passenger cleared?”

// MARK: - Airport Security Clearance

let clearedPassengers: Set<String> = ["P001", "P002", "P003"]

print(clearedPassengers.contains("P002")) // true
print(clearedPassengers.contains("P999")) // false

// Why this is FAST
// - Swift hashes "P002"
// - Jumps directly to its storage location
// - No scanning required
// - Same speed for 3 passengers or 3 million passengers.

// MARK: - Custom Exmple (Vehicle Entry System)

struct Vehicle: Hashable {
    let number: String
    let state: String
}

let car1 = Vehicle(number: "GJ01AA3232", state: "Gujarat")
let car2 = Vehicle(number: "RJ03AA3232", state: "Rajasthan")
let car3 = Vehicle(number: "GJ01AA3232", state: "Gujarat") // Duplicate

var registerdVehicle: Set<Vehicle> = []

registerdVehicle.insert(car1)
registerdVehicle.insert(car2)
registerdVehicle.insert(car3) // ignored

print(registerdVehicle.count) // 2

// Hash collision explained
// Imagine live in a flat or Apartment
// Your flat or apartment no. #402 number gets two letters by mistake
// Postman Checks name on envelope and deliver to exact person
// What swift does here
// 1 Hash -> correct bucket (flat or apartment)
// 2 == -> exact match (exact person)

print(car1 == car3) // true

// That's why Hashable protcol requires Equatable remove hash colision

// Understanding insert()
// How to check actually entry happen in Set?

// MARK: - Car Registered or not

let result = registerdVehicle.insert(car1)

print(result.inserted)          // false (already exists)
print(result.memberAfterInsert) // existing vehicle

// When should you use Set instead of Array?
// | Situation                  Use
// | -----------------------------------
// | Order matters              Array
// | Duplicates allowed         Array
// | Fast contains()            Set
// | Uniqueness required        Set
// | Membership check           Set
// | -----------------------------------

// In simple Term:
// Array = Ordered list (Queue at billing counter)
// Set   = Fast lookup table (Cinema Ticket Booking)

// -----------------------------------------
// Interview Questions
// -----------------------------------------
// 1. What is a Set in Swift?
// Ans:-
//     - A Set is an unordered collection of unique elements.
//     - It stores elements based on their hash values, which makes membership checks very fast.
// -----------------------------------------

// 2. How is Set different from Array?
// --------------------------------------------------
//  | Feature        | Array        | Set
// --------------------------------------------------
//  | Order          | Maintained   | Not guaranteed
//  | Duplicates     | Allowed      | Not allowed
//  | Access by index|  Yes         | No
//  | contains() speed|  O(n)       | O(1)
// -----------------------------------------

// 3. Why doesn’t Set maintain order?
// Ans:
// - Because elements are stored according to hash values, not insertion order.

print(registerdVehicle.first) // Random Vehicle displaying

// 4. Why must elements in a Set conform to Hashable?
// Ans:
// - Swift uses the hash value to determine where an element should be stored.

// 5. How does Set ensure uniqueness?
// Ans:
// When inserting an element:
// - Swift computes its hash value
// - Checks the storage location
// - Uses == to confirm equality if needed

struct Employee: Hashable {
    let id: Int
}

// 6. What is the time complexity of contains() in a Set?
// Ans:
// O(1) on average
// Worst case O(n) due to hash collisions (rare)

// 7. What happens if two elements have the same hash value?
// Ans:
// - This is called a hash collision.
// - Swift resolves it using Equatable (==) to find the exact match.

// 8. Explain insert() return value
// Ans:
// insert() returns a tuple:
var fruits = Set<String>(["Apple", "Banana"])
let result1 = fruits.insert("Apple")
print(result1.inserted)          // false
print(result1.memberAfterInsert) // "Apple"

// 9. Can a Set contain nil?
// Ans:
// No.
// But it can contain Optional values if explicitly defined:

var values: Set<Int?> = [1, nil, 3]

// 10. How does Set internally store elements?
// Ans:
// Using a hash table:
// - Hash → bucket
// - Collision → equality check
// - Constant-time lookup

// 11. Difference between Set and Dictionary
// Ans:
// Feature          Set             Dictionary
// Stores       Values only        Key-Value pairs
// Lookup           Value               Key
// Hashable         Value            Key only

// 12. Can a custom class be stored in a Set?
// Ans:
// Yes, but it must conform to Hashable and Equatable.
// For classes, hash must not change while in a set.
                                            
// 13. Why is mutating a Set element dangerous?
// Ans:
// - If the mutated property affects the hash value, the element becomes unreachable.
// - Wrong:
class User: Hashable {
    var id: Int
}

// - Correct:

struct User: Hashable {
    let id: Int
}

// 14. Explain Set algebra operations
// Ans:
let a: Set = [1, 2, 3]
let b: Set = [3, 4, 5]

a.union(b)        // [1,2,3,4,5]
a.intersection(b) // [3]
a.subtracting(b)  // [1,2]
a.symmetricDifference(b) // [1,2,4,5]

// 15. When should you prefer Set over Array?
// Ans:
// - Membership checks
// - Uniqueness enforcement
// - Fast lookup
// - Order not required

// 16. Why does Hashable inherit from Equatable?
// Ans:
// Because hash collisions are possible, Swift uses == to confirm the exact element.

// 17. Can two unequal objects have the same hash?
// Ans:
// Yes. Hash collisions are expected and handled.

// 18. Is Set thread-safe?
// Ans:
// No.
// Use synchronization or Swift Concurrency (actor) when shared.

// 19. Why is Set faster than Array for lookups?
// Ans:
// Set uses hash-based lookup, while Array performs linear search.
                                            
// 20. Interview Trick Question
let s1: Set = [1, 2, 3]
let s2: Set = [3, 2, 1]
print(s1 == s2)
// Output: true
// Because order doesn’t matter.
