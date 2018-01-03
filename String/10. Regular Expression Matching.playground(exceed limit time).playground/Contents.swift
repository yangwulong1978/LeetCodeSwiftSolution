//: Playground - noun: a place where people can play

import UIKit

//Finally got it! “c*” could be looked as “”,“c”,“cc”,etc, “letter*” means there could be certain times (0 to infinity)continuous letters appear. So the "cab"could be looked as “c*” = “no c”, “a*” = “two a”, “b” ->“aab”.
class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        
        var sArray = Array(s)
        var pArray = Array(p)
        var _s = s
        var _p = p
        if _p.isEmpty
        {
            return _s.isEmpty
        }
        var first_match = (!_s.isEmpty && (pArray[0] == sArray[0] || pArray[0] == "."))
        
        if _p.count >= 2 && pArray[1] == "*"
        {
            var p1 = String(pArray[2...]) //String(describing: p.index(p.startIndex, offsetBy: 2))
            print("p1--\(p1)")
            var s1 = ""
            if sArray.count >= 1
            {
                s1 = String(sArray[1...])
            }//String(describing: s.index(s.startIndex, offsetBy: 1))
            print("s1--\(s1)")
            return (isMatch(s,p1) || (first_match && isMatch(s1,p)))
        }else
        {
            var s1 = ""
            if sArray.count >= 1
            {
                s1 = String(sArray[1...])
            }
            var p1 = ""
            if pArray.count >= 1
            {
                p1 = String(pArray[1...])
            }
            return first_match && isMatch(s1,p1)
        }
    }
}

