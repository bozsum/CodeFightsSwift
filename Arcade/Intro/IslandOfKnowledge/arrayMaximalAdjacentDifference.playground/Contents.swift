import UIKit

func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int {
    var maxVal = Int.min
    for index in 1..<inputArray.count {
        maxVal = max(abs(inputArray[index-1] - inputArray[index]), maxVal)
    }
    return maxVal
}

let inputArray = [[2, 4, 1, 0],
                  [1, 1, 1, 1],
                  [-1, 4, 10, 3, -2],
                  [10, 11, 13],
                  [-2, -2, -2, -2, -2],
                  [-1, 1, -3, -4]]

for input in inputArray {
    print("input : \(input)")
    print("result : \(arrayMaximalAdjacentDifference(inputArray: input))\n")
}
