import UIKit

func shapeArea(n: Int) -> Int {
    var fullArea = Int(pow(2 * Double(n) - 1, 2))
    var deleteArea = 4 * sumVal(n: n - 1)
    return fullArea - deleteArea
}

func sumVal(n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + sumVal(n: n - 1)
    }
}
