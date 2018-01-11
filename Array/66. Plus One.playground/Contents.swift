//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var _digits = digits
        var lastIncreased = false
        var j = 0
        for i in (0..<_digits.count).reversed()
        {
            print("digit i --\(digits[i])")
            if _digits[i] < 9 && lastIncreased == false
            {
                _digits[i] = _digits[i] + 1
                break
            }
            else if _digits[i] + 1 > 9 && i < _digits.count - 1 {
                _digits[i] = 0
                lastIncreased = true
            }
            else if _digits[i] + 1 > 9 &&  _digits.count - 1 == 0
            {
                _digits[i] = 0
                _digits.insert(1, at: 0)
            }
            else if _digits[i] + 1 > 9 &&  j < _digits.count - 1
            {
                _digits[i] = 0
                lastIncreased = true
            }
            else if lastIncreased == true
            {
                
                if _digits[i] < 9
                {
                    _digits[i] = _digits[i] + 1
                    lastIncreased = false
                    break
                }
                else {
                    _digits[i] = 0
                    lastIncreased = true
                }
                
            }
            else if lastIncreased == true && i == _digits.count - 1
            {
                _digits[i] = 0
                _digits.insert(1, at: 0)
            }
            j += 1
        }
        if lastIncreased == true
        {
            _digits.insert(1, at: 0)
        }
        return _digits
    }
}


