import UIKit

func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
    return max(yourLeft, yourRight) == max(friendsLeft, friendsRight) &&
        yourLeft + yourRight == friendsLeft + friendsRight
}


let inputArray = [(10, 15, 15, 10),
                  (15, 10, 15, 10),
                  (15, 10, 15, 9),
                  (10, 5, 5, 10),
                  (10, 15, 5, 20),
                  (10, 20, 10, 20),
                  (5, 20, 20, 5),
                  (20, 15, 5, 20),
                  (5, 10, 5, 10),
                  (1, 10, 10, 0),
                  (5, 5, 10, 10),
                  (10, 5, 10, 6),
                  (1, 1, 1, 1),
                  (0, 10, 10, 0)]

for (yL, yR, fL, fR) in inputArray {
    print("yourLeft : \(yL)")
    print("yourRight : \(yR)")
    print("friendsLeft : \(fL)")
    print("friendsRight : \(fR)")
    print("result : \(areEquallyStrong(yourLeft: yL, yourRight: yR, friendsLeft: fL, friendsRight: fR))\n")
}
