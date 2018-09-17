import UIKit

func avoidObstacles(inputArray: [Int]) -> Int {
    var range = 2
    loopCheckObstacles: while true {
        for val in inputArray {
            if val % range == 0 {
                range += 1
                continue loopCheckObstacles
            }
        }
        break
    }
    return range
}

let inputArray = [[5, 3, 6, 7, 9],
                  [2, 3],
                  [1, 4, 10, 6, 2],
                  [1000, 999],
                  [19, 32, 11, 23],
                  [5, 8, 9, 13, 14]]

for input in inputArray {
    print("input : \(input)")
    print("result : \(avoidObstacles(inputArray: input))\n")
}
