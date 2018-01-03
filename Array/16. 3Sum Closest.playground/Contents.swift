//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        
        var _nums = nums.sorted(by: {$0 < $1})
        var minDif = Int.max
        var result = 0
        print(_nums)
        
        for i in 0 ..< _nums.count - 2
        {
            var j = i + 1
            var k = _nums.count - 1
            
            while j < k
            {
                var sum = _nums[i] + _nums[j] + _nums[k]
                
                if abs(sum - target) < minDif
                {
                    minDif = abs(sum - target)
                    result = sum
                }
                if sum > target
                {
                    k -= 1
                }else if sum < target
                {
                    j += 1
                }else
                {
                    return result
                }
                
            }
        }
        return result
    }
}
