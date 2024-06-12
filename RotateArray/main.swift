import UIKit
//Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//
//Input: nums = [-1,-100,3,99], k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]


func reverse(_ nums: inout [Int], _ i: Int, j: Int) {
    var li = i
    var rj = j

    while (li < rj) {
        var temp = nums[li]
        nums[li] = nums[rj]
        nums[rj] = temp
        li += 1
        rj -= 1
    }
}


func rotate(_ nums: inout [Int], _ k: Int) {
    var tempK = k % nums.count
    if tempK < 0 {
        tempK += nums.count
    }

    reverse(&nums, 0, j: nums.count - tempK - 1)
    reverse(&nums, nums.count - tempK, j: nums.count - 1)
    reverse(&nums, 0, j: nums.count - 1)
}
