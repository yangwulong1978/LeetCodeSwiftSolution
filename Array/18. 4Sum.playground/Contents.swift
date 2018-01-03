//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        
        var _nums = nums
        var  _numsArray = [[Int]]()
        
        if _nums.count < 4
        {
            _numsArray[0] = _nums
            return _numsArray
        }
        
        _nums = _nums.sorted(by: {$0 < $1})
        
        for i in 0..<_nums.count - 3
        {
            if _nums[i] + _nums[i + 1] + _nums[i + 2] + _nums[i + 3] > target
            {
                break
            }
            if _nums[i] + _nums[_nums.count - 1] + _nums[_nums.count - 2] + _nums[_nums.count - 3] < target
            {
                continue
            }
            if i > 0 && _nums[i] == _nums[i - 1]
            {
                continue
            }
            for j in (i + 1)..<_nums.count - 2
            {
                
                if _nums[i] + _nums[j] + _nums[j + 1] + _nums[j + 2] > target
                {
                    break
                }
                if _nums[i] + _nums[_nums.count - 1] + _nums[_nums.count - 2] +  _nums[_nums.count - 3] < target
                {
                    continue
                }
                if j > i + 1 && _nums[j] == _nums[j - 1]
                {
                    continue
                }
                var low = j + 1 , high = _nums.count - 1
                
                while low < high
                {
                    var sum = _nums[i] + _nums[j] + _nums[low] + _nums[high]
                    if sum == target
                    {
                        _numsArray.append([_nums[i],_nums[j],_nums[low],_nums[high]])
                        while low < high && _nums[low] == _nums[low + 1]
                        {
                            low += 1
                        }
                        while low < high && _nums[high] == _nums[high - 1]
                        {
                            high -= 1
                        }
                        low += 1
                        high -= 1
                    }
                    else if sum < target
                    {
                        low += 1
                    }
                    else
                    {
                        high -= 1
                    }
                }
            }
        }
        return _numsArray
        
    }
}
