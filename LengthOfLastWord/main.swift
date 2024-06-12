import UIKit
//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal
//substring
// consisting of non-space characters only.
//
// 
//
//Example 1:
//
//Input: s = "Hello World"
//Output: 5
//Explanation: The last word is "World" with length 5.
//Example 2:
//
//Input: s = "   fly me   to   the moon  "
//Output: 4
//Explanation: The last word is "moon" with length 4.
//Example 3:
//
//Input: s = "luffy is still joyboy"
//Output: 6
//Explanation: The last word is "joyboy" with length 6.

func lengthOfLastWord(_ s: String) -> Int {
    var input: String = s.trimmingCharacters(in: .whitespacesAndNewlines)
    if let index = input.lastIndex(of: Character(" ")) {
        let lastIndex = index.utf16Offset(in: input)
        return (input.count - 1) - lastIndex
    }
    return input.count
}
