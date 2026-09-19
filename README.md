# 🚀 Algorithm-Learnings: Data Structures, Algorithms & Swift Engineering

> A structured, beginner-friendly learning repository dedicated to mastering **Data Structures & Algorithms (DSA)**, **LeetCode Problem-Solving Patterns**, and **Deep Swift Language Internals**.

---

## 📚 Table of Contents
1. [Repository Architecture](#-repository-architecture)
2. [Our Created Swift Programs & Deep Dives](#-our-created-swift-programs--deep-dives)
3. [Current Covered Patterns (Two Pointers & Sliding Window)](#-current-covered-patterns)
4. [Master Learning Roadmap: What Patterns Come Next](#-master-learning-roadmap-what-patterns-come-next)
5. [The Standard Beginner-Friendly Pattern Template](#-the-standard-beginner-friendly-pattern-template)
6. [LeetCode Problem Solving Strategy](#-leetcode-problem-solving-strategy)

---

## 📂 Repository Architecture

```text
MyLearnings/
├── README.md                                  # Master documentation & algorithm roadmap
├── Algorithms/
│   └── Swift Collection/
│       ├── Arrays.playground                  # Swift Array memory, indexing & existential containers
│       └── Sets.playground                    # Set hashing, collisions, Equatable & Set algebra
└── DSA Design Pattern/
    ├── TEMPLATE.md                            # Standard beginner-friendly markdown template (with Mermaid)
    └── Two Pointers/
        ├── 1. Two Pointers.md                 # Master overview, comparison matrix & Mermaid decision tree
        ├── 2. Opposite Direction.md           # Two Sum II, Palindrome, Container With Water
        ├── 3. Fast & Slow Pointer.md          # Remove Duplicates, Move Zeroes, Cycle Detection
        ├── 4. Sliding Window.md               # Min Subarray Sum, Max Average Subarray, Substring
        ├── 5. Dutch National Flag.md          # 3-Pointer Partitioning (Sort Colors, Parity)
        └── 6. Two Pointers Two Arrays.md      # Merge Sorted Array, Is Subsequence
```

---

## 🛠️ Our Created Swift Programs & Deep Dives

This repository bridges high-level algorithmic theory with real low-level Swift compiler and memory mechanics.

### 1. [Arrays.playground](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/Algorithms/Swift%20Collection/Arrays.playground)
- **Contiguous Memory Allocation:** Demonstrates why array index lookups (`arr[i]`) run in $O(1)$ constant time via the pointer offset formula:
  $$\text{Address} = \text{Base Address} + (\text{Index} \times \text{Stride})$$
- **Existential Containers:** Explores how Swift stores heterogeneous types conforming to protocols (`any Readable`) inside 5-word existential containers (3-word inline buffer, value witness table pointer, protocol witness table pointer).
- **Shifting Overhead:** Visualizes why `removeFirst()` is an expensive $O(N)$ operation (all subsequent elements must shift left in memory) while `removeLast()` is an instantaneous $O(1)$ operation.

### 2. [Sets.playground](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/Algorithms/Swift%20Collection/Sets.playground)
- **Hash Table Storage:** Explains why `Set.contains()` executes in $O(1)$ average time (Airport Security analogy).
- **Hash Collisions & Equatable:** Demystifies why `Hashable` inherits from `Equatable`:
  1. **Hash value** locates the target bucket (e.g. apartment building).
  2. **Equality (`==`)** confirms the exact element (e.g. recipient name on the envelope).
- **Reference Type Pitfalls:** Demonstrates the danger of mutating a `class` instance inside a `Set`, causing the element to become unreachable due to hash divergence.
- **20 Core Interview Questions:** Detailed Q&As covering set algebra (`union`, `intersection`, `subtracting`), thread safety, and memory trade-offs.

---

## 🎯 Current Covered Patterns (With Native Mermaid Visuals 📊)

### [Pattern 1: Two Pointers Overview](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/1.%20Two%20Pointers.md)
Transforms brute-force $O(N^2)$ nested loops into blazing-fast $O(N)$ single-pass solutions with $O(1)$ extra space.

| Sub-Pattern | Guide Link | Mental Model | Best Used For | Mermaid Diagrams Included |
| :--- | :--- | :--- | :--- | :---: |
| **Opposite Direction** | [2. Opposite Direction.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/2.%20Opposite%20Direction.md) | Numbered Street | Sorted Pair Sum, Palindromes, Reversals, Trapping Water | ✅ Flowchart |
| **Fast & Slow** | [3. Fast & Slow Pointer.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/3.%20Fast%20&%20Slow%20Pointer.md) | Reader-Writer & Tortoise-Hare | In-place array deduplication, Move Zeroes, Linked List Cycle | ✅ Flowchart |
| **Sliding Window** | [4. Sliding Window.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/4.%20Sliding%20Window.md) | Caterpillar & Camera Zoom | Contiguous subarrays/substrings, min/max window lengths | ✅ Lifecycle Loop |
| **Dutch National Flag** | [5. Dutch National Flag.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/5.%20Dutch%20National%20Flag.md) | 3-Color Bead Sorting | 3-way partitioning, sorting `[0, 1, 2]` in-place (Sort Colors) | ✅ 4-Zone Partition |
| **Two Arrays / Sequences** | [6. Two Pointers Two Arrays.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/Two%20Pointers/6.%20Two%20Pointers%20Two%20Arrays.md) | Two Checkout Queues | Merging sorted arrays from back, checking subsequences | ✅ Traversal Logic |

---

## 🗺️ Master Learning Roadmap: What Patterns Come Next

Here is our structured roadmap of the **14 Core DSA Patterns** required for LeetCode mastery, listed in optimal learning order:

```text
Phase 1: Linear Arrays & Multi-Pointers (Completed 🎉)
  ├── 1. Opposite Direction (Inward Convergence)     [COMPLETED ✅]
  ├── 2. Fast & Slow Pointers (Reader & Cycle)       [COMPLETED ✅]
  ├── 3. Sliding Window (Fixed & Dynamic)            [COMPLETED ✅]
  ├── 4. Dutch National Flag (3-Way Partitioning)    [COMPLETED ✅]
  └── 5. Two Pointers on Two Arrays (Merging)        [COMPLETED ✅]

Phase 2: Array Math & Space Reduction (Next Up 🚀)
  ├── 4. Prefix Sum & Running Sum Accumulation   [UPCOMING ⏳]
  └── 5. Binary Search & Search Space Reduction  [UPCOMING ⏳]

Phase 3: Linked Lists & Monotonic Structures
  ├── 6. Monotonic Stack & Queue                 [UPCOMING ⏳]
  └── 7. Linked List In-Place Manipulation       [UPCOMING ⏳]

Phase 4: Non-Linear Trees & Hierarchies
  ├── 8. Tree Breadth-First Search (BFS)         [UPCOMING ⏳]
  ├── 9. Tree Depth-First Search (DFS)           [UPCOMING ⏳]
  └── 10. Binary Search Tree (BST) Properties    [UPCOMING ⏳]

Phase 5: Graphs, Heaps & Intervals
  ├── 11. Graph Traversal (BFS/DFS/Matrix)       [UPCOMING ⏳]
  ├── 12. Top 'K' Elements (Heaps/PriorityQueue) [UPCOMING ⏳]
  └── 13. Interval Overlaps & Merging            [UPCOMING ⏳]

Phase 6: Optimization & Exhaustive Search
  ├── 14. Backtracking & Combinations            [UPCOMING ⏳]
  ├── 15. Dynamic Programming (1D & 2D)          [UPCOMING ⏳]
  └── 16. Trie & Bit Manipulation                [UPCOMING ⏳]
```

---

### Detailed Pattern Breakdown & Curated LeetCode Problems

#### 4. Prefix Sum & Kadane's Algorithm ⏳
- **Core Concept:** Precomputing cumulative sums (`prefix[i] = prefix[i-1] + nums[i]`) enables answering any range sum query `sum(i...j)` in $O(1)$ constant time rather than $O(N)$.
- **When to Use:** Problems asking for subarray sums equaling $K$, running totals, or maximum contiguous subarray sum.
- **Curated LeetCode Problems:**
  - 🟢 **#303** Range Sum Query - Immutable
  - 🟢 **#53** Maximum Subarray (Kadane's Algorithm)
  - 🟡 **#560** Subarray Sum Equals K (Prefix Sum + Hash Map)
  - 🟡 **#238** Product of Array Except Self
  - 🟡 **#525** Contiguous Array

#### 5. Binary Search & Modified Binary Search ⏳
- **Core Concept:** Repeatedly dividing a sorted search space in half ($O(\log N)$). Also applies to monotonic answer spaces ("Binary Search on Answer").
- **When to Use:** Input is sorted, or looking for the first/last occurrence, peak element, or searching rotated arrays.
- **Curated LeetCode Problems:**
  - 🟢 **#704** Binary Search
  - 🟢 **#35** Search Insert Position
  - 🟡 **#33** Search in Rotated Sorted Array
  - 🟡 **#153** Find Minimum in Rotated Sorted Array
  - 🟡 **#875** Koko Eating Bananas (Binary search on solution space)

#### 6. Monotonic Stack & Monotonic Queue ⏳
- **Core Concept:** A stack or queue that maintains elements in strictly increasing or decreasing order. Solves "next/previous greater or smaller element" problems in a single $O(N)$ linear pass.
- **When to Use:** Problems where each element needs to find the first element to its left or right that is taller, shorter, or larger.
- **Curated LeetCode Problems:**
  - 🟡 **#739** Daily Temperatures
  - 🟡 **#496** Next Greater Element I
  - 🟡 **#503** Next Greater Element II
  - 🟡 **#901** Online Stock Span
  - 🔴 **#84** Largest Rectangle in Histogram

#### 7. Linked List In-Place Manipulation ⏳
- **Core Concept:** Manipulating pointer links directly (`curr.next = prev`) without copying or creating new nodes, achieving $O(1)$ space.
- **When to Use:** Reversing a list (or sublist), merging sorted lists, or reordering nodes.
- **Curated LeetCode Problems:**
  - 🟢 **#206** Reverse Linked List
  - 🟢 **#21** Merge Two Sorted Lists
  - 🟡 **#92** Reverse Linked List II (Between positions left and right)
  - 🟡 **#19** Remove Nth Node From End of List
  - 🟡 **#143** Reorder List

#### 8. Tree BFS (Breadth-First Search / Level Order) ⏳
- **Core Concept:** Exploring nodes level by level using an auxiliary FIFO Queue.
- **When to Use:** Finding the shortest path in unweighted graphs, level averages, zigzag traversal, or right-side view.
- **Curated LeetCode Problems:**
  - 🟡 **#102** Binary Tree Level Order Traversal
  - 🟡 **#103** Binary Tree Zigzag Level Order Traversal
  - 🟡 **#199** Binary Tree Right Side View
  - 🟡 **#111** Minimum Depth of Binary Tree
  - 🟡 **#637** Average of Levels in Binary Tree

#### 9. Tree DFS (Depth-First Search) ⏳
- **Core Concept:** Exploring subtrees recursively (Preorder, Inorder, Postorder) or using an explicit stack. Uses the Call Stack to carry state down and propagate results up.
- **When to Use:** Path sums, max depth, subtree validation, lowest common ancestor.
- **Curated LeetCode Problems:**
  - 🟢 **#104** Maximum Depth of Binary Tree
  - 🟢 **#226** Invert Binary Tree
  - 🟢 **#112** Path Sum
  - 🟡 **#236** Lowest Common Ancestor of a Binary Tree
  - 🟡 **#543** Diameter of Binary Tree

#### 10. Binary Search Tree (BST) Properties ⏳
- **Core Concept:** Every node has left children $\le$ node value and right children $\ge$ node value. An **in-order traversal** of a BST produces a strictly sorted array!
- **When to Use:** Finding Kth smallest, validating search tree structures, range sum of BST.
- **Curated LeetCode Problems:**
  - 🟡 **#98** Validate Binary Search Tree
  - 🟡 **#230** Kth Smallest Element in a BST
  - 🟢 **#700** Search in a Binary Search Tree
  - 🟢 **#235** Lowest Common Ancestor of a BST

#### 11. Graph Traversal (Matrix & Adjacency List) ⏳
- **Core Concept:** Modeling connected entities (grids, social networks, dependencies) and traversing via BFS/DFS with a `visited` set to prevent infinite loops.
- **When to Use:** Counting connected components, finding shortest paths, flood fill.
- **Curated LeetCode Problems:**
  - 🟡 **#200** Number of Islands
  - 🟡 **#133** Clone Graph
  - 🟡 **#994** Rotting Oranges (Multi-source BFS)
  - 🟡 **#417** Pacific Atlantic Water Flow
  - 🟡 **#207** Course Schedule (Topological Sort / Cycle Detection)

#### 12. Top 'K' Elements & Priority Queues (Heaps) ⏳
- **Core Concept:** Using a Min-Heap or Max-Heap to track the top $K$ smallest or largest elements in $O(N \log K)$ time rather than full sorting $O(N \log N)$.
- **When to Use:** Finding the Kth largest/smallest item, merging $K$ sorted collections.
- **Curated LeetCode Problems:**
  - 🟡 **#215** Kth Largest Element in an Array
  - 🟡 **#347** Top K Frequent Elements
  - 🟡 **#973** K Closest Points to Origin
  - 🔴 **#23** Merge k Sorted Lists
  - 🔴 **#295** Find Median from Data Stream

#### 13. Intervals Pattern (Merge & Insert) ⏳
- **Core Concept:** Sorting intervals by start time and comparing whether `next.start <= current.end` to identify overlapping time slots.
- **When to Use:** Calendar appointments, meeting rooms, resource allocation.
- **Curated LeetCode Problems:**
  - 🟡 **#56** Merge Intervals
  - 🟡 **#57** Insert Interval
  - 🟡 **#435** Non-overlapping Intervals
  - 🟡 **#252** Meeting Rooms
  - 🟡 **#253** Meeting Rooms II

#### 14. Backtracking & Combinations ⏳
- **Core Concept:** Depth-first tree exploration that builds a candidate solution step-by-step and abandons ("backtracks") as soon as it determines the candidate cannot lead to a valid solution.
- **When to Use:** Generating all permutations, subsets, combinations, or solving puzzles (N-Queens, Sudoku).
- **Curated LeetCode Problems:**
  - 🟡 **#78** Subsets
  - 🟡 **#46** Permutations
  - 🟡 **#39** Combination Sum
  - 🟡 **#79** Word Search
  - 🔴 **#51** N-Queens

#### 15. Dynamic Programming (1D & 2D) ⏳
- **Core Concept:** Breaking complex optimization problems into overlapping subproblems, storing previously computed answers (Memoization or Tabulation) to prevent repeated work.
- **When to Use:** "Find maximum profit", "minimum cost", "number of distinct ways to reach a target".
- **Curated LeetCode Problems:**
  - 🟢 **#70** Climbing Stairs
  - 🟡 **#198** House Robber
  - 🟡 **#322** Coin Change
  - 🟡 **#300** Longest Increasing Subsequence
  - 🟡 **#1143** Longest Common Subsequence
  - 🟡 **#62** Unique Paths

---

## 📝 The Standard Beginner-Friendly Pattern Template

Every pattern in this repository adheres to a strict, beginner-friendly format designed to maximize retention and clarity.

You can find the master blueprint here:
👉 **[DSA Design Pattern/TEMPLATE.md](file:///Users/akshatgandhi/Projects/Demo/MyLearnings/DSA%20Design%20Pattern/TEMPLATE.md)**

### Structure of Every Pattern Note:
1. **Real-World Analogy (Explain Like I'm 5 👶):** Everyday conceptual metaphor before diving into code.
2. **Core Concept & Visual Blueprint 🗺️:** Concise definition + ASCII diagrams showing pointers and states.
3. **When to Use Checklist 🎯:** Concrete signals, keywords, and trigger questions.
4. **Decision Rule Table 🧠:** Systematic `if-else` condition matrix.
5. **Step-by-Step ASCII Walkthrough 🚶‍♂️:** Visual step-by-step trace on a concrete sample array.
6. **Clean Swift Code Templates 💻:** Production-quality Swift code with guard clauses and inline explanations.
7. **Complexity Analysis ⏱️:** Big-O Time & Space breakdown.
8. **Common Traps & Edge Cases ⚠️:** Off-by-one errors, bounds checks, duplicate values, and tricky inputs.
9. **Curated LeetCode Practice Matrix 🎯:** Easy $\to$ Medium $\to$ Hard roadmap with checkboxes.
10. **Connection to Our Swift Playgrounds 💡:** Connecting algorithmic concepts to Swift memory internals.

---

## 💡 LeetCode Problem Solving Strategy

When tackling any new LeetCode problem, follow this 4-step workflow:

```text
Step 1: Identify the Pattern (2-3 mins)
  - Is the array sorted? ──▶ Think Two Pointers (Opposite) or Binary Search
  - Contiguous subarray? ──▶ Think Sliding Window or Prefix Sum
  - In-place modification / cycle? ──▶ Think Fast & Slow Pointer
  - "Next greater" element? ──▶ Think Monotonic Stack

Step 2: Dry Run on Paper / ASCII (3-5 mins)
  - Trace with a 4-5 element example.
  - Test edge cases: empty input, 1 element, all duplicates, negative numbers.

Step 3: Code with Guard Clauses & Clean Names
  - Early returns for count < 2 or empty collections.
  - Use expressive variable names (`left`, `right`, `slow`, `fast`, `windowSum`).

Step 4: Verify Time & Space Complexity
  - Did you use extra memory? Can it be reduced to O(1)?
  - Is time complexity strictly linear O(N) or logarithmic O(log N)?
```
