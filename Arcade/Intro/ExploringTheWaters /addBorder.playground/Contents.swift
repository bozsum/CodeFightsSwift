import UIKit

func addBorder(picture: [String]) -> [String] {
    var result = picture
    var rep = ""
    for _ in 0..<(picture[0].count + 2) {
        rep += "*"
    }
    for i in 0..<picture.count {
        result[i] = "*\(result[i])*"
    }
    result.insert(rep, at: 0)
    result.append(rep)
    return result
}

var inputArray = [["abc","ded"],
                  ["a"],
                  ["aa","**","zz"],
                  ["abcde","fghij","klmno","pqrst","uvwxy"],
                  ["wzy**"]]

for input in inputArray {
    print("input :\n[")
    for val in input {
        print("\t\(val)")
    }
    print("]")
    
    let result = addBorder(picture: input)
    print("result :\n[")
    for val in result {
        print("\t\(val)")
    }
    print("]\n")
}
