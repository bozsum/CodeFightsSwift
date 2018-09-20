import UIKit

func boxBlur(image: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    for row in 0..<(image.count - 3 + 1) {
        var avgVal = [Int]()
        for col in 0..<(image[0].count - 3 + 1) {
            var sum = 0
            for rowIm in row..<(row + 3) {
                for colIm in col..<(col + 3) {
                    sum+=image[rowIm][colIm]
                }
            }
            avgVal.append(sum / 9)
        }
        result.append(avgVal)
    }
    return result;
}


let inputArray = [[[1,1,1],
                   [1,7,1],
                   [1,1,1]],

                  [[0,18,9],
                   [27,9,0],
                   [81,63,45]],
                  
                  [[36,0,18,9],
                   [27,54,9,0],
                   [81,63,72,45]],

                  [[7,4,0,1],
                   [5,6,2,2],
                   [6,10,7,8],
                   [1,4,2,0]],

                  [[36,0,18,9,9,45,27],
                   [27,0,54,9,0,63,90],
                   [81,63,72,45,18,27,0],
                   [0,0,9,81,27,18,45],
                   [45,45,27,27,90,81,72],
                   [45,18,9,0,9,18,45],
                   [27,81,36,63,63,72,81]]]

for input in inputArray {
    print("input : \(input)")
    print("result : \(boxBlur(image: input))\n")
}
