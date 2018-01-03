//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        
        var sArray = Array(s)
        
        var sum = 0
        var last = 1000
        for i in 0..<s.count
        {
            var temInt = getIntegerFromRoman(s: String(sArray[i]))
            if temInt > last
            {
                sum = sum - last * 2
            }
            sum = sum + temInt
            last = temInt
            
        }
        
        return sum
    }
    
    
    func getIntegerFromRoman(s : String) -> Int
    {
        if s == "I"
        {
            return 1
        }
        else if s == "V"
        {
            return 5
        }
        else if s == "X"
        {
            return 10
        }
        else if s == "L"
        {
            return 50
        }
        else if s == "C"
        {
            return 100
        }
        else if s == "D"
        {
            return 500
        }
        else if s == "M"{
            return 1000
        }
        else{
            return -1
        }
    }
}

