import UIKit


//Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
//
//Implement the MinStack class:
//
//MinStack() initializes the stack object.
//void push(int val) pushes the element val onto the stack.
//void pop() removes the element on the top of the stack.
//int top() gets the top element of the stack.
//int getMin() retrieves the minimum element in the stack.
//You must implement a solution with O(1) time complexity for each function.
//

// 1 | [1]
// 1 5 | [1 5]
// 1 5 3 | [1 3]
// 1 5 3 7 | [1 3]

class MinStack {
    private var items: [Int] = []
    private var minItems: [Int] = []
    
    init() {}
    
    func push(_ val: Int) {
        items.append(val)
        if minItems.isEmpty {
            minItems.append(val)
        } else if let min = minItems.last, val <= min {
            minItems.append(val)
        }
    }
    
    func pop() {
        let popped = items.removeLast()
        if popped == minItems.last {
            minItems.removeLast()
        }
    }
    
    func top() -> Int {
        return items.last ?? -1
    }
    
    func getMin() -> Int {
        return minItems.last ?? -1
    }
}
