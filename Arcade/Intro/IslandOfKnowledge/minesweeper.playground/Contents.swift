import UIKit

func minesweeper(matrix: [[Bool]]) -> [[Int]] {
    var matrixCopy = [[Bool]]()
    var result = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
    
    matrixCopy.append(Array(repeating: false, count: matrix[0].count + 2))
    for arr in matrix {
        var interArr = arr
        interArr.insert(false, at: 0)
        interArr.append(false)
        matrixCopy.append(interArr)
    }
    matrixCopy.append(Array(repeating: false, count: matrix[0].count + 2))

    for outerRow in 0..<matrix.count {
        for outerCol in 0..<matrix[outerRow].count {
            for innerRow in outerRow..<(outerRow+3) {
                for innerCol in outerCol..<(outerCol+3) {
                    if (outerRow + 1 == innerRow) && (outerCol + 1 == innerCol) {
                        continue
                    }
                    
                    if matrixCopy[innerRow][innerCol] {
                        result[outerRow][outerCol] += 1
                    }
                }
            }
        }
    }
    return result
}

let inputArray = [
            [[true,false,false],
             [false,true,false],
             [false,false,false]],

            [[false,false,false],
             [false,false,false]],

            [[true,false,false,true],
             [false,false,true,false],
             [true,true,false,true]],

            [[true,true,true],
             [true,true,true],
             [true,true,true]],

            [[false,true,true,false],
             [true,true,false,true],
             [false,false,true,false]],

            [[true,false],
             [true,false],
             [false,true],
             [false,false],
             [false,false]]]

for input in inputArray {
    print("input :")
    for val in input {
        print(val)
    }
    
    let output = minesweeper(matrix: input)
    print("output :")
    for val in output {
        print(val)
    }
    print("\n")
}
