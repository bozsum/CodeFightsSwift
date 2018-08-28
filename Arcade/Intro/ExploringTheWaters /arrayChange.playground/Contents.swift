import UIKit

func arrayChange(inputArray: [Int]) -> Int {
    var inputArrayCopy = inputArray
    var result = 0;
    var prv = inputArrayCopy[0];
    for i in 1..<inputArrayCopy.count {
        while prv >= inputArrayCopy[i] {
            inputArrayCopy[i] = inputArrayCopy[i]+1;
            result += 1
        }
        prv = inputArrayCopy[i];
    }
    return result;
}

var inputArray = [[1, 1, 1],
                  [-1000, 0, -2, 0],
                  [2, 1, 10, 1],
                  [2, 3, 3, 5, 5, 5, 4, 12, 12, 10, 15]]

for input in inputArray {
    print("input : \(input)")
    print("result : \(arrayChange(inputArray: input))\n")
}
