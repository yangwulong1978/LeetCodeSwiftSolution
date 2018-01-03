//: Playground - noun: a place where people can play

import UIKit

class Solution {

    var roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    var values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]
    func intToRoman(_ num: Int) -> String {
        if num < 1 || num > 3999
        {
            return ""
        }
        var result = ""
        var i = 0
        var _num = num
        while _num > 0
        {
            while _num >= values[i]
            {
                _num -= values[i]
                result.append(roman[i])
            }
            i += 1
        }
        
        return result
    }
}

