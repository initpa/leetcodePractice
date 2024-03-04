//  Created by Nitesh on 04/03/24.

import Foundation


func checkForBalancedBrackets(string: String) -> Bool {
    var stack: [Character] = []
    let mapBrackets: [Character: Character] = [")":"(", "}": "{", "]": "["]
    let openingBrackets = "({["
    
    for char in string {
        if openingBrackets.contains(char) {
            stack.append(char)
        } else {
            if stack.isEmpty {
                return false
            } else if let last = stack.last, last == mapBrackets[char] {
                stack.popLast()
            } else {
                return false
            }
        }
    }
    return stack.isEmpty
}


let brackets1 = "{[()]}"
let brackets2 = "[](){{}}"
let brackets3 = "{[}]"
let brackets4 = "{([{})]}"

checkForBalancedBrackets(string: brackets1)
checkForBalancedBrackets(string: brackets2)
checkForBalancedBrackets(string: brackets3)
checkForBalancedBrackets(string: brackets4)

