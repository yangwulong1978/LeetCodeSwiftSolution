//: Playground - noun: a place where people can play

import UIKit

class Solution {
    
    private let mapping: [String] = [
        "0",
        "1",
        "abc",
        "def",
        "ghi",
        "jkl",
        "mno",
        "pqrs",
        "tuv",
        "wxyz"
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0
        {
            return []
        }
        var ans: [String] = []
        ans.append("")
        for i in 0 ..< digits.characters.count {
            let intValue: Int = Int(String(digits[i]))!
            while ans.first?.characters.count == i {
                let tmp: String = ans.removeFirst()
                for c in mapping[intValue].characters {
                    ans.append("\(tmp)\(c)")
                }
            }
        }
        return ans
    }
    
}
extension String {
    subscript(index: Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: index)]
    }
}

