import UIKit

func alternatingSums(a: [Int]) -> [Int] {
    var result = [0, 0]
    for i in 0..<a.count {
        if i % 2 == 0 {
            result[0] += a[i];
        } else {
            result[1] += a[i];
        }
    }
    return result;
}

var inputArray = [[50, 60, 60, 45, 70],
                  [100, 50],
                  [80],
                  [100, 50, 50, 100],
                  [100, 51, 50, 100]]

for input in inputArray {
    print("input : \(input)")
    print("result: \(alternatingSums(a: input))\n")
}
