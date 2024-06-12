import UIKit

//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//
//You must implement a solution with a linear runtime complexity and use only constant extra space.
//
// 
//
//Example 1:
//
//Input: nums = [2,2,1]
//Output: 1
//Example 2:
//
//Input: nums = [4,1,2,1,2]
//Output: 4
//Example 3:
//
//Input: nums = [1]
//Output: 1


func singleNumber(_ nums: [Int]) -> Int {
    let array = nums.sorted()
    print(array)
    var index = 0
    while index < nums.count - 1 {
        if array[index] != array[index + 1] {
            return array[index]
        }
        index += 2
    }
    return array[array.count - 1]
}
