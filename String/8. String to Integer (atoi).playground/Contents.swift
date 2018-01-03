//: Playground - noun: a place where people can play
import UIKit

class Solution {
    func myAtoi(_ str: String) -> Int {
        
        if str.count == 0 || (str.trimmingCharacters(in: .whitespacesAndNewlines)).count == 0
        {
            return 0
        }
        var arrayValue = Array(str)
        
        var hasZero = false
        var _str:String = str.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        let(sign ,replaceStr) = validateIfContainSign(str: _str)
        
        if replaceStr == ""
        {
            return 0
        }
        if replaceStr == "" && sign == ""
        {
            return 0
        }
        _str = replaceStr
        _str = removeFirstZero(str: _str)
        
        _str = getFirstPartOfInteger(str:_str)
        
        if let intValue = Int(_str)
        {
            if sign == "-"
            {
                if -intValue < Int32.min
                {
                    return Int(Int32.min)
                }
                else{
                    return -intValue
                }
            }
            else{
                if intValue > Int32.max
                {
                    return Int(Int32.max)
                }
                else{
                    
                    
                    return intValue
                }
            }
        }
        else{
            if _str.count == 0
            {
                return 0
            }
            if sign == "-"
            {
                return Int(Int32.min)
            }
            else{
                return Int(Int32.max)
            }
        }
        
        
    }
    
    func removeFirstZero(str:String) ->String
    {
        var arrayValue = Array(str)
        if  arrayValue[0] == "0"
        {
            var replacedStr = String(arrayValue[1...])
            return removeFirstZero(str: replacedStr)
        }
        else
        {
            return str
        }
    }
    func validateIfContainSign(str: String) ->(String ,String)
    {
        var arrayValue = Array(str)
        for i in 0..<str.count
        {
            if  arrayValue[i] == "+" || arrayValue[i] == "-"
            {
                if i != 0
                {
                    return("","")
                }
            }
        }
        if  arrayValue[0] == "+" || arrayValue[0] == "-"
        {
            var sign = String(arrayValue[0])
            if str.count > 1
            {
                
                var replacedStr = String(arrayValue[1...])
                return (sign ,replacedStr)
            }
            else{
                
                return(sign,"")
            }
        }
        else
        {
            return ("" ,str)
        }
    }
    func getFirstPartOfInteger(str:String) -> String
    {
        var arrayValue = Array(str)
        
        var str:String = ""
        var isValid = true
        for i in 0..<arrayValue.count
        {
            if isValid == true
            {
                if let d = Int(String(arrayValue[i]))
                {
                    str.append(arrayValue[i])
                }
                else {
                    isValid = false
                }
            }
        }
        return str
    }
}


