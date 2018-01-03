//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var newNums = [Int]()
        for i in 0..<nums.count
        {
            
            
                let j = i + 1
                
                for k in j..<nums.count
                {
                    if nums[i] + nums[k] == target
                    {
                        
                        
                        newNums.append(i)
                        newNums.append(k)
                        
                    }
                    
                }
                
                
            
        }
            return newNums
        }
}

 var solution = Solution()
var intNum = [-1,-2,-3,-4,-5]
solution.twoSum(intNum, -8)
