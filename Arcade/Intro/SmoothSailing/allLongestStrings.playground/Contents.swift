import UIKit

func allLongestStrings(inputArray: [String] ) -> [String] {
    var outputArray = [String]()
    var maxLength = 0
    for input in inputArray {
        if input.count == maxLength {
            outputArray.append(input)
        } else if input.count > maxLength {
            maxLength = input.count
            outputArray.removeAll()
            outputArray.append(input)
        }
    }
    return outputArray;
}


var inputArray = [["aba","aa","ad","vcd","aba"],
                  ["aa"],
                  ["abc","eeee","abcd","dcd"],
                  ["a","abc","cbd","zzzzzz","a","abcdef","asasa","aaaaaa"]]

for input in inputArray {
    print("input : \(input)")
    print("output : \(allLongestStrings(inputArray: input))\n")
}
