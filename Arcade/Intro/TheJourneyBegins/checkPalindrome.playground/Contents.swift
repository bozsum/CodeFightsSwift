import UIKit

func checkPalindrome(inputString: String) -> Bool {
    var reverseString = ""
    for index in 0..<inputString.count {
        reverseString.append(inputString[inputString.index(inputString.endIndex, offsetBy: -1-index)])
    }
    return inputString == reverseString
}
