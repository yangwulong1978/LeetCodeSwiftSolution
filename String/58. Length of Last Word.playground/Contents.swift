//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var _s =  Array(String((s.trimmingCharacters(in: .whitespaces)).reversed()))
        var j = -1
        for i in 0..<_s.count
        {
            
            if _s[i] == " "
            {
                j = i
                break
            }
        }
        
        if j == -1
        {
            j = _s.count
        }
        return j
        
    }
}
