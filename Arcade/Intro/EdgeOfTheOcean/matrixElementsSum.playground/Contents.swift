import UIKit

func matrixElementsSum(matrix: [[Int]]) -> Int {
    var sum = 0;
    for col in 0..<matrix[0].count {
        for row in 0..<matrix.count {
            if matrix[row][col] == 0 {
                break
            }
            sum += matrix[row][col];
        }
    }
    return sum
}

var matrixInput = [
                    [
                        [0,1,1,2],
                        [0,5,0,0],
                        [2,0,3,3]
                    ],
                    [
                        [1,1,1,0],
                        [0,5,0,1],
                        [2,1,3,10]
                    ],
                    [
                        [1,1,1],
                        [2,2,2],
                        [3,3,3]
                    ],
                    [
                        [0]
                    ]
                  ]

for i in 0..<matrixInput.count {
    print(matrixElementsSum(matrix: matrixInput[i]))
}


