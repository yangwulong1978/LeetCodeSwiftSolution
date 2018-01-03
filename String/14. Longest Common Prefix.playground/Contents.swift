//: Playground - noun: a place where people can play

import UIKit
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var count = strs.count
        var longestPrefixIndex = 0
        var longestPrefixStr = ""
        var needBreak = false
        var hasReachEnd = false
        if strs.count == 0
        {
            return ""
        }
        else if strs.count == 1
        {
            return strs[0]
        }
        else
        {
            var j = 0
            while needBreak == false
            {
                hasReachEnd = false
                var strSet = Set<String>()
                for i in 0..<strs.count
                {
                    
                    var str = strs[i]
                    if str.count == 0
                    {
                        return ""
                    }
                    var strArray = Array(str)
                    if j < str.count
                    {
                        strSet.insert(String(strArray[j]))
                    }
                    else
                    {
                        needBreak = true
                        hasReachEnd = true
                    }
                }
                j += 1
                
                if strSet.count > 1
                {
                    needBreak = true
                }
                else{
                    
                    for  e in strSet
                    {
                        if hasReachEnd
                        {
                            
                        }
                        else {
                            longestPrefixStr.append(e)
                        }
                        // print(longestPrefixStr)
                        //needBreak = true
                    }
                }
                
            }
        }
        return longestPrefixStr
    }
}

