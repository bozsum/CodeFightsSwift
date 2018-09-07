import UIKit

func isIPv4Address(inputString: String) -> Bool {
    let splitArray = inputString.split(separator: ".")
    if splitArray.count == 4 {
        for strVal in splitArray {
            if let intVal = Int(strVal) {
                if intVal < 0 || intVal > 255 {
                    return false
                }
            } else {
                return false
            }
        }
        return true
    }
    return false
}

let inputArray = ["172.16.254.1",
                  "172.316.254.1",
                  ".254.255.0",
                  "1.1.1.1a",
                  "1",
                  "0.254.255.0",
                  "1.23.256.255.",
                  "1.23.256..",
                  "0..1.0",
                  "1.1.1.1.1",
                  "1.256.1.1",
                  "a0.1.1.1",
                  "0.1.1.256",
                  "129380129831213981.255.255.255",
                  "255.255.255.255abcdekjhf",
                  "7283728"]

for input in inputArray {
    print("input : \(input)")
    print("result : \(isIPv4Address(inputString: input))\n")
}
