//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var _nums = nums.sorted(by: {$0 < $1})
        print(_nums)
        var numsArray = [[Int]]()
        
        
        
        if _nums.count < 3
        {
            return []
        }
        var hasEqual = 0
        for d in 0..<_nums.count
        {
            if _nums[d] == 0
            {
                hasEqual += 1
            }
        }
        if hasEqual == _nums.count
        {
            return [[0,0,0]]
        }
        if _nums.count > 2
        {
            for i in 0..<_nums.count
            {
                var tempNumsArray = [[Int]]()
                if i - 1 >= 0 && _nums[i - 1] == _nums[i]
                {
                    continue
                }
                
                var k = _nums.count - 1
                var j = i + 1
                while j < k
                {
                    
                    if (_nums[i] + _nums[k] + _nums[j]) < 0
                    {
                        
                        j += 1
                        
                    }
                    else if (_nums[i] + _nums[k] + _nums[j] ) > 0
                    {
                        k -= 1
                        
                    }
                    else {
                        
                        var tempNumArray = [Int]()
                        tempNumArray.append(_nums[i])
                        tempNumArray.append( _nums[j])
                        tempNumArray.append(_nums[k])
                        
                        var hasDuplicate = false
                        for i in tempNumsArray
                        {
                            if tempNumArray == i
                            {
                                hasDuplicate =  true
                            }
                        }
                        if hasDuplicate == false
                        {
                            numsArray.append(tempNumArray)
                            tempNumsArray.append(tempNumArray)
                            
                        }
                        
                        
                        j += 1
                        
                    }
                    
                    
                }
            }
        }
        else
        {
            numsArray = []
        }
        return numsArray
    }
}


