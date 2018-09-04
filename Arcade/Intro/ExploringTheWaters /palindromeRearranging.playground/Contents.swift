import UIKit

func palindromeRearranging(inputString: String) -> Bool {
    var inputCopy = inputString
    var dict = [Character: Int]()
    while !inputCopy.isEmpty {
        let char = inputCopy.remove(at: inputCopy.startIndex)
        if let val = dict[char] {
            dict[char] = val + 1
        } else {
            dict[char] = 1
        }
    }
   
    var singleCharCount = 0
    for value in dict.values {
        if value % 2 != 0 {
            singleCharCount += 1
        }
    }
    
    if singleCharCount > 1 {
        return false
    }
    
    return true;
}

let inputArray = ["aabb",
                  "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc",
                  "abbcabb",
                  "zyyzzzzz",
                  "z",
                  "zaa",
                  "abca",
                  "abcad",
                  "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbccccaaaaaaaaaaaaa",
                  "abdhuierf"]

for input in inputArray {
    print("input : \(input)")
    print("result : \(palindromeRearranging(inputString: input))\n")
}
