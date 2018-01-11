//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        
        var v = [String]()
        
        generateParenthesis(v: &v,s: "",l:n,r:n)
        return v
        
    }
    func generateParenthesis(v: inout [String] ,s:String,l: Int, r: Int )
    {
        if l == 0 && r == 0
        {
            v.append(s)
        }
        if l > 0
        {
            generateParenthesis(v: &v, s: s + "(", l: l - 1, r: r)
        }
        if r > 0 && l < r
        {
            generateParenthesis(v: &v, s:s + ")", l: l, r: r - 1)
        }
    }
}
