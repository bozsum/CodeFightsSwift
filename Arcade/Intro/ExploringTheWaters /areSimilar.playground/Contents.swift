import UIKit

func areSimilar(a: [Int], b: [Int]) -> Bool {
    let tempA = a.sorted()
    let tempB = b.sorted()
    var count = 0
    if tempA == tempB {
        for i in 0..<tempA.count {
            if a[i] != b[i] {
                count+=1
            }
        }
        if count <= 2 {
            return true
        }
    }
    return false
}

var inputArray = [([1, 2, 3], [1, 2, 3]),
                  ([1, 2, 3], [2, 1, 3]),
                  ([1, 2, 2], [2, 1, 1]),
                  ([1, 1, 4], [1, 2, 3]),
                  ([1, 2, 3], [1, 10, 2]),
                  ([2, 3, 1], [1, 3, 2]),
                  ([2, 3, 9], [10, 3, 2]),
                  ([4, 6, 3], [3, 4, 6]),
                  ([832, 998, 148, 570, 533, 561, 894, 147, 455, 279], [832, 998, 148, 570, 533, 561, 455, 147, 894, 279]),
                  ([832, 998, 148, 570, 533, 561, 894, 147, 455, 279], [832, 570, 148, 998, 533, 561, 455, 147, 894, 279])]

for (a, b) in inputArray {
    print("a : \(a)")
    print("b : \(b)")
    print("result : \(areSimilar(a: a, b: b))\n")
}
