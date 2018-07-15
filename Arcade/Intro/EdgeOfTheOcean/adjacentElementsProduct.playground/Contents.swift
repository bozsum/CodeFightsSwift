import UIKit

func adjacentElementsProduct(inputArray: [Int]) -> Int {
    var maxProduct = -1_000_000
    for i in 0..<inputArray.count-1 {
        if inputArray[i] * inputArray[i+1] > maxProduct {
            maxProduct = inputArray[i] * inputArray[i+1]
        }
    }
    return maxProduct
}
