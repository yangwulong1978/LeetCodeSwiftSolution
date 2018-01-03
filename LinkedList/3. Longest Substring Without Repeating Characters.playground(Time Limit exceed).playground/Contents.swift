//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = s.count
        var i=0, j = 0,ans = 0
        var set = Set<String>()
        while i < maxLength && j < maxLength
        {
            let indexj = s.index(s.startIndex, offsetBy: j)
            let indexi = s.index(s.startIndex, offsetBy: i)
            print( String(s[indexj]))
            if set.contains(String(s[indexj])) == false
            {
                set.insert(String(s[indexj]))
                j += 1
                print("j\(j)")
                if j - i > ans
                {
                    ans = j - i
                }
                //maxLength = j
            }
            else{
                
                set.remove(String(s[indexi]))
                i += 1
                print("i\(i)")
            }
            
        }
        maxLength = j - i
        //        var maxLength = 0
        //        if s.count >= 1
        //        {
        //            maxLength = 1
        //        }
        //
        //        var validateStrSet = Set<String>()
        //        for d in 0..<s.count
        //        {
        //            let index = s.index(s.startIndex, offsetBy: d)
        //            validateStrSet.insert(String(s[index]))
        //        }
        //        if validateStrSet.count == s.count
        //        {
        //            maxLength = s.count
        //        }
        //        else
        //        {
        //            for i in 0..<s.count
        //            {
        //                var strSet = Set<String>()
        //                let index = s.index(s.startIndex, offsetBy: i)
        //                strSet.insert(String(s[index]))
        //
        //                var hasDuplicated = false
        //                //var subString = String(s.suffix(from: index))
        //                var j = i + 1
        //                if j < s.count
        //                {
        //                    repeat // for j in ( i + 1 )..<s.count
        //                    {
        //
        //                        //print("j\(j)")
        //                        let endIndex = s.index(s.startIndex, offsetBy: j)
        //
        //
        //                        // print(String(s[endIndex]))
        //                        if strSet.contains(String(s[endIndex]))
        //                        {
        //                            hasDuplicated = true
        //                        }
        //                        else{
        //                            if hasDuplicated == false
        //                            {
        //                                strSet.insert(String(s[endIndex]))
        //
        //                                if maxLength < strSet.count
        //                                {
        //
        //                                    maxLength = strSet.count
        //                                   // print("maxLength\(maxLength)")
        //                                   // print(strSet.description)
        //
        //                                }
        //                            }
        //                        }
        //                        j = j + 1
        //                    }while(hasDuplicated == false && j < s.count)
        //                }
        //            }
        //        }
        //
        //        // }
        return ans
    }
}
