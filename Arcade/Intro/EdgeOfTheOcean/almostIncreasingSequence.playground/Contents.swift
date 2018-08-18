import UIKit


func almostIncreasingSequence(sequence: [Int]) -> Bool {
    var result = true
    for i in 0..<sequence.count {
        var sequenceCopy = sequence
        sequenceCopy.remove(at: i)
        var lastVal: Int?
        
        result = true
        for j in 0..<sequenceCopy.count {
            if lastVal == nil {
                lastVal = sequenceCopy[j]
                continue
            }
            
            if sequenceCopy[j] <= lastVal! {
                result = false
                break
            }
            
            lastVal = sequenceCopy[j]
        }
        
        if result {
            return true
        }
    }
    return result
}

var sequenceArray: [[Int]] = [[1, 3, 2, 1],
                            [1, 3, 2],
                            [1, 2, 1, 2],
                            [1, 4, 10, 4, 2],
                            [10, 1, 2, 3, 4, 5],
                            [1, 1, 1, 2, 3],
                            [0, -2, 5, 6],
                            [1, 2, 3, 4, 5, 3, 5, 6],
                            [40, 50, 60, 10, 20, 30],
                            [1, 1],
                            [1, 2, 5, 3, 5],
                            [10, 1, 2, 3, 4, 5, 6, 1],
                            [1, 2, 3, 4, 3, 6],
                            [1, 2, 3, 4, 99, 5, 6],
                            [123, -17, -5, 1, 2, 3, 12, 43, 45],
                            [3, 5, 67, 98, 3]]


for i in 0..<sequenceArray.count {
    print("sequence : \(sequenceArray[i]) | result : \(almostIncreasingSequence(sequence: sequenceArray[i]))")
}


