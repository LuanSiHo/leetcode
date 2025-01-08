import UIKit

//Given an integer array nums, design an algorithm to randomly shuffle the array. All permutations of the array should be equally likely as a result of the shuffling.
//
//Implement the Solution class:
//
//Solution(int[] nums) Initializes the object with the integer array nums.
//int[] reset() Resets the array to its original configuration and returns it.
//int[] shuffle() Returns a random shuffling of the array.


class Solution {
    private var items: [Int] = []
    
    init(_ nums: [Int]) {
        items = nums
    }
    
    func reset() -> [Int] {
        return items
    }
    
    func shuffle() -> [Int] {
        return items.shuffled()
    }
}
