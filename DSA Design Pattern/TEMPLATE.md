# Pattern [Number]: [Pattern Name]

> **Difficulty Level:** [Beginner / Intermediate / Advanced]  
> **Primary Data Structures:** [e.g., Arrays, Strings, Linked Lists, Trees]  
> **Key Time Complexity:** $O(N)$ vs Brute Force $O(N^2)$  
> **Key Space Complexity:** $O(1)$ auxiliary space  

---

## 1. Real-World Analogy (Explain Like I'm 5 👶)

*What real-world situation mirrors this pattern?*

> **Analogy Title:** [e.g., Two cars driving towards each other]  
> [Write 2-3 sentences explaining the intuition in everyday terms. No computer science jargon here. Focus on the core mechanism — why this way of thinking is faster than checking every single combination.]

---

## 2. Core Concept & Visual Blueprint 🗺️

### What Is It?
[Clear, concise definition of the pattern. Explain the roles of the pointers, variables, or data structures used.]

### Visual Representation
```text
Initial State:
 [ 1,   3,   5,   7,   9,  11 ]
   ▲                       ▲
   │                       │
 Left Pointer         Right Pointer
 (Start)                  (End)

Movement Rule:
 - If condition A is met: Left Pointer moves RIGHT (▶)
 - If condition B is met: Right Pointer moves LEFT  (◀)
```

---

## 3. When to Use Checklist 🎯

Look for these **clues** and **keywords** in the problem statement:

- [ ] **Data Structure:** Is the input an array, string, or list?
- [ ] **Sorting:** Is the data sorted, or can it be sorted without breaking the problem requirements?
- [ ] **Target Search:** Are you looking for a pair, triplet, or subsegment matching a specific target sum or property?
- [ ] **In-Place Modification:** Does the problem ask for $O(1)$ extra space or in-place element rearrangement?
- [ ] **Subarray/Substring Range:** Does the problem involve contiguous ranges, min/max lengths, or sliding boundaries?

### Common Problem Phrases:
- *"Find two numbers that sum to..."*
- *"Find the longest / shortest contiguous subarray where..."*
- *"Remove duplicates in-place..."*
- *"Determine if a sequence contains a cycle..."*

---

## 4. The Decision Rule Table 🧠

This table defines the **exact condition-to-action logic** at each iteration:

| Current State / Condition | Action to Take | Why? (The Intuition) |
| :--- | :--- | :--- |
| `Current Value == Target` | ✅ Found answer / Record result | Desired condition satisfied. |
| `Current Value < Target` | Move pointer towards larger values | We need to increase our value. |
| `Current Value > Target` | Move pointer towards smaller values | We need to decrease our value. |
| Boundary reached (`L >= R`) | Terminate search loop | All valid combinations have been inspected. |

---

## 5. Step-by-Step ASCII Walkthrough 🚶‍♂️

**Sample Problem:** [Problem Statement]  
**Sample Input:** `nums = [1, 2, 4, 6, 9, 11]`, `target = 10`  
**Expected Output:** `[0, 4]` (indices for values `1` and `9`)

```text
============================================================
Initial Setup: Left = 0 (val: 1), Right = 5 (val: 11)
============================================================

Step 1:
 [ 1,  2,  4,  6,  9,  11 ]
   L                    R
 Sum = 1 + 11 = 12
 Evaluation: 12 > 10 (Too large!)
 Action: Decrement Right pointer (Right = 4)

------------------------------------------------------------
Step 2:
 [ 1,  2,  4,  6,  9,  11 ]
   L                R
 Sum = 1 + 9 = 10
 Evaluation: 10 == 10 (Match found! 🎉)
 Action: Return [0, 4]
============================================================
```

---

## 6. Clean Swift Code Template 💻

```swift
/// [Function Description]
/// - Parameters:
///   - nums: Input array (must be sorted or formatted as required)
///   - target: The target condition to meet
/// - Returns: Result matching criteria
func solvePattern(_ nums: [Int], _ target: Int) -> [Int] {
    // 1. Guard check for base edge cases
    guard nums.count >= 2 else { return [] }
    
    // 2. Initialize pointers
    var left = 0
    var right = nums.count - 1
    
    // 3. Traversal loop
    while left < right {
        let currentMetric = nums[left] + nums[right]
        
        if currentMetric == target {
            return [left, right] // Target met
        } else if currentMetric < target {
            left += 1           // Adjust left pointer
        } else {
            right -= 1          // Adjust right pointer
        }
    }
    
    // 4. Fallback if no valid answer exists
    return []
}

// MARK: - Example Usage & Verification
let sampleArray = [1, 2, 4, 6, 9, 11]
let targetSum = 10
let result = solvePattern(sampleArray, targetSum)
print("Indices: \(result)") // Output: Indices: [0, 4]
```

---

## 7. Complexity Analysis ⏱️

- **Time Complexity:** 
  - $O(N)$ — In the worst-case scenario, each pointer visits each element at most once. Compared to brute force nested loops ($O(N^2)$), this reduces $10,000^2 = 100,000,000$ operations down to just $10,000$ operations.
- **Space Complexity:** 
  - $O(1)$ — Only a fixed number of pointer index variables are allocated in memory. No additional data structures are created.

---

## 8. Common Traps & Edge Cases ⚠️

> [!WARNING]
> 1. **Loop Boundary Condition:** Choosing `while left < right` vs `while left <= right`. If using the same element twice is disallowed, always use `<`.
> 2. **Unsorted Inputs:** Using opposite-direction pointers on an unsorted array without sorting first will produce incorrect results.
> 3. **Empty or Single-Element Collections:** Ensure your code handles `nums.isEmpty` or `nums.count < 2` safely using early `guard` returns.
> 4. **Integer Overflow:** In languages with fixed integer sizes (or in sum comparisons), beware of integer overflow when summing very large numbers (use `left + (right - left) / 2` for midpoints).

---

## 9. LeetCode Practice & Progress Tracker 🎯

Track your mastery by solving these curated problems in order:

| Difficulty | LeetCode # | Problem Name | Core Trick / Twist | Completed |
| :--- | :--- | :--- | :--- | :---: |
| 🟢 Easy | [#125](https://leetcode.com/problems/valid-palindrome/) | Valid Palindrome | Alphanumeric filter + 2 pointers | [ ] |
| 🟡 Medium | [#167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/) | Two Sum II | Sorted array + opposite convergence | [ ] |
| 🟡 Medium | [#15](https://leetcode.com/problems/3sum/) | 3Sum | Sort array + fix one number + 2 pointers | [ ] |
| 🟡 Medium | [#11](https://leetcode.com/problems/container-with-most-water/) | Container With Most Water | Move pointer at smaller height | [ ] |
| 🔴 Hard | [#42](https://leetcode.com/problems/trapping-rain-water/) | Trapping Rain Water | LeftMax and RightMax two-pointer tracking | [ ] |

---

## 10. Connection to Our Swift Playgrounds 💡

*How does this relate to Swift's memory and language features?*
- Reference: [Arrays.playground](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/Algorithms/Swift%20Collection/Arrays.playground)
- Reference: [Sets.playground](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/Algorithms/Swift%20Collection/Sets.playground)
- **Key Swift Insight:** Swift Arrays are contiguous blocks of memory with $O(1)$ random indexing. Moving pointer indices (`left += 1`, `right -= 1`) performs simple arithmetic offset calculation (`start + (index * stride)`), which is extremely hardware cache-friendly!
