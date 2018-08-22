import UIKit

func isLucky(n: Int) -> Bool {
    var stringVal = String(n)
    var sum = 0
    for index in 0..<stringVal.count {
        let i = stringVal.index(stringVal.startIndex, offsetBy: index)
        if index  < stringVal.count / 2 {
            sum += Int(stringVal.utf8[i])
        } else {
            sum -= Int(stringVal.utf8[i])
        }
    }
    return sum == 0;
}

var inputArray = [1230, 239017, 134008, 10, 11, 1010, 261534, 100000, 999999, 123321]
for val in inputArray {
    print("input : \(val) | result : \(isLucky(n: val))")
}
