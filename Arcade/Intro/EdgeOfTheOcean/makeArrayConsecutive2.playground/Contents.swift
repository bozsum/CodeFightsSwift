import UIKit

func makeArrayConsecutive2(statues: [Int]) -> Int {
    var orderArray = statues
    orderArray.sort()
    return (orderArray[orderArray.count-1] - orderArray[0] + 1) - orderArray.count;
}
