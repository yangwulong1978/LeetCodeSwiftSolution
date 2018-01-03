//: Playground - noun: a place where people can play

import UIKit



class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        var isPalindrome = false
        if x < 0
        {
            return isPalindrome
        }
        let strValue = String(x)
        let k = strValue.count
        if strValue.count == 1
        {
            return true
        }
        if strValue.count%2 == 0
        {
            var arrayValue = Array(strValue)
            let firstPartStr = String( arrayValue[0...(k/2 - 1)])
            let secondPartStr = String(arrayValue[(k/2)...])
            //let firstPartStr = String(describing: strValue.index(strValue.startIndex, offsetBy: k/2 - 1))
            // let secondPartStr = String(describing: strValue.index(strValue.startIndex, offsetBy: k/2 ))
            if String(firstPartStr.reversed()) == secondPartStr
            {
                isPalindrome = true
                //return isPalindrome
            }
        }
        else {
            var arrayValue = Array(strValue)
            let firstPartStr = String( arrayValue[0...(Int(k/2 - 1))])
            let secondPartStr = String(arrayValue[(Int(k/2 + 1))...])
            if String(firstPartStr.reversed()) == secondPartStr
            {
                isPalindrome = true
                //return isPalindrome
            }
        }
        return isPalindrome
    }
}
