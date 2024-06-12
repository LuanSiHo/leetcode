import UIKit

//Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
//
//You must write an algorithm that runs in O(n) time.
//
// 
//
//Example 1:
//
//Input: nums = [100,4,200,1,3,2]
//Output: 4
//Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
//Example 2:
//
//Input: nums = [0,3,7,2,5,8,4,6,0,1]
//Output: 9


func longestConsecutive(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }

    var numSet: Set = Set(nums)
    var maxCount: Int = 0
    for num in numSet {
        if !numSet.contains(num - 1) {
            var startNum: Int = num
            var count: Int = 1
            while numSet.contains(startNum + 1) {
                count += 1
                startNum += 1
            }
            maxCount = max(maxCount, count)
        }
    }
    return maxCount
}
