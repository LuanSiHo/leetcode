import UIKit
//
//Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
//
// 
//
//Example 1:
//
//Input: s = "leetcode"
//Output: 0
//Example 2:
//
//Input: s = "loveleetcode"
//Output: 2
//Example 3:
//
//Input: s = "aabb"
//Output: -1
// 
//
//Constraints:
//
//1 <= s.length <= 105
//s consists of only lowercase English letters.


func firstUniqChar(_ s: String) -> Int {
    let alphabet = (UnicodeScalar("a").value...UnicodeScalar("z").value).compactMap { UnicodeScalar($0) }.map { Character(String($0)) }
    var minIndex = -1
    for char in alphabet {
        var firstIndex = s.firstIndex(of: char)
        var lastIndex = s.lastIndex(of: char)
        if firstIndex != nil && lastIndex != nil {
            let firstPos = s.distance(from: s.startIndex, to: firstIndex!)
            let lastPos = s.distance(from: s.startIndex, to: lastIndex!)
            if  firstPos == lastPos && lastPos != -1 {
                if minIndex == -1 {
                    minIndex = firstPos
                } else if firstPos < minIndex  {
                    minIndex = firstPos
                }
            }
        }
    }
    return minIndex
}
