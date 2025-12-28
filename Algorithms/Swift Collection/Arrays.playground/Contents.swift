import UIKit
import Foundation
// MARK: - Simple Array (Real-life example: Grocery list)

// Think of this as a row of boxes on a shelf.
// Each box has the same size.

let groceryList = ["Milk", "Bread", "Eggs"]
print("First item:", groceryList[0]) // Fast access


// MARK: - Mutable Array (Adding items)

var shoppingCart = ["Pen", "Notebook"]
shoppingCart.append("Marker")

print("Shopping Cart:", shoppingCart)


// MARK: - How indexing works (Conceptual explanation)
//
// Each String reference takes fixed space (pointer size).
// Swift calculates memory like:
// start + (index × size)
//
// So shoppingCart[2] is a direct jump, not a search.


// MARK: - Protocol-based real-life example

protocol Readable {
    var pageCount: Int { get }
}

// Simple object – fits easily in existential container
struct Leaflet: Readable {
    let pageCount: Int
}

// Medium object
struct Magazine: Readable {
    let pageCount: Int
    let name: String
    let issueDate: Date
}

// Larger object
struct Book: Readable {
    let pageCount: Int
    let title: String
    let author: String
    let isbn: String
}


// MARK: - Creating real objects

let pamphlet = Leaflet(pageCount: 2)

let techMagazine = Magazine(
    pageCount: 120,
    name: "Swift Monthly",
    issueDate: .now
)

let novel = Book(
    pageCount: 850,
    title: "Swift Internals",
    author: "Apple Engineer",
    isbn: "123-456-789"
)


// MARK: - Array of mixed types using `any Readable`

// Swift uses EXISTENTIAL CONTAINERS here
// Each element has the same fixed-size box

var readingMaterial: [any Readable] = [
    pamphlet,
    techMagazine,
    novel
]

// Fast index access still works
print("Second item page count:", readingMaterial[1].pageCount)


// MARK: - Removing items (Performance lesson)

/// Removing from start (expensive)
readingMaterial.removeFirst()

// Swift must move ALL remaining elements left by one
print("After removing first:", readingMaterial.count)


/// Removing from end (cheap)
readingMaterial.removeLast()
print("After removing last:", readingMaterial.count)


// MARK: - Real-life analogy (in comments)

/*
 Imagine this array like a bookshelf:
 
 [ Book A ][ Book B ][ Book C ][ Book D ]
 
 - Remove Book A
 → All books must shift left (slow for big shelves)
 
 - Remove Book D
 → Just remove it, nothing else moves (fast)
 
 This is WHY:
 • Array indexing is fast
 • Insertion/removal at the start is slow
 */


// MARK: - Key Takeaways (Playground summary)

print("""
Arrays store elements sequentially
Index access is O(1) (constant time)
`any Protocol` uses existential containers
Removing from end is faster than from start
""")
