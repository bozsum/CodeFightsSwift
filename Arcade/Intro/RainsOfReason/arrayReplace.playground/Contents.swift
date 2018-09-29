import UIKit

func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    var result = inputArray
    for index in 0..<result.count {
        if result[index] == elemToReplace {
            result[index] = substitutionElem
        }
    }
    return result;
}

let tupleArray:[(inputArray: [Int], elemToReplace: Int, substitutionElem: Int)] = [
                                                                                    ([1, 2, 1], 1, 3),
                                                                                    ([1, 2, 3, 4, 5], 3, 0),
                                                                                    ([1, 1, 1], 1, 10),
                                                                                    ([1, 2, 1, 2, 1], 2, 1),
                                                                                    ([1, 2, 1, 2, 1], 2, 2),
                                                                                    ([3, 1], 3, 9)]

for input in tupleArray {
    print("input : \(input)")
    print("result : \(arrayReplace(inputArray: input.inputArray, elemToReplace: input.elemToReplace, substitutionElem: input.substitutionElem))\n")
}
