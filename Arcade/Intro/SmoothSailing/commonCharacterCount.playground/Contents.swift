import UIKit

func commonCharacterCount(s1: String, s2: String) -> Int{
    var s2Copy = s2
    var commonCount: Int = 0
    for char in s1 {
        if let index = s2Copy.index(of: char) {
            commonCount += 1
            s2Copy.remove(at: index)
        }
    }
    return commonCount
}

var inputArray = [("aabcc","adcaa"),
                  ("zzzz","zzzzzzz"),
                  ("abca","xyzbac"),
                  ("a","b"),
                  ("a","aaa")]

for (s1Val, s2Val) in inputArray {
    print("s1 : \(s1Val)")
    print("s2 : \(s2Val)")
    print("result : \(commonCharacterCount(s1: s1Val, s2: s2Val))\n")
}
