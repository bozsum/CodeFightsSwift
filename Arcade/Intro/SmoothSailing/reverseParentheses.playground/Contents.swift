import UIKit

func reverseParentheses(s: String) -> String {
    var result = s
    while result.contains("(") || result.contains(")") {
        var openPos = result.startIndex
        var closePos = result.endIndex
        
        for index in result.indices {
            if result[index] == "(" {
                openPos = index
            } else if result[index] == ")" {
                closePos = index
                break
            }
        }
        
        let subString = String(result[result.index(after: openPos)...result.index(before: closePos)].reversed())
        result.replaceSubrange(openPos...closePos, with: subString)
    }
    return result;
}


var inputArray = ["a(bc)de", "a(bcdefghijkl(mno)p)q", "co(de(fight)s)", "Code(Cha(lle)nge)", "Where are the parentheses?", "abc(cba)ab(bac)c", "The ((quick (brown) (fox) jumps over the lazy) dog)"]

for input in inputArray {
    print("input : \(input)")
    print("result : \(reverseParentheses(s: input))\n")
}
