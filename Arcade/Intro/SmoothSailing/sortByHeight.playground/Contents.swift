import UIKit

func sortByHeight(a: [Int]) -> [Int] {
    var result = [Int]()
    var arrayCopy = a
    arrayCopy.sort()
    while arrayCopy.contains(-1) {
        arrayCopy.remove(at: 0)
    }
    
    for i in 0..<a.count {
        if a[i] != -1 {
            result.append(arrayCopy.remove(at: 0))
        } else {
            result.append(-1)
        }
    }
    return result;
}

var inputArray = [[-1, 150, 190, 170, -1, -1, 160, 180],
                  [-1, -1, -1, -1, -1],
                  [-1],
                  [4, 2, 9, 11, 2, 16],
                  [2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1],
                  [23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3]]

for input in inputArray {
    print("input : \(input)")
    print("result : \(sortByHeight(a: input))\n")
}
