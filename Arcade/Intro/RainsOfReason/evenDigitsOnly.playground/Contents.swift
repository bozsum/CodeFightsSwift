import UIKit

func evenDigitsOnly(n: Int) -> Bool {
    var digitVal = n
    while (digitVal > 0) {
        if digitVal % 10 % 2 != 0 {
            return false
        }
        digitVal /= 10
    }
    return true
}

let inputArray = [248622,
                  642386,
                  248842,
                  1,
                  8,
                  2462487,
                  2468428,
                  5468428,
                  7468428]

for input in inputArray {
    print("input : \(input)")
    print("result : \(evenDigitsOnly(n: input))\n")
}
