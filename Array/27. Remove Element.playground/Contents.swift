//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        var _nums = nums
        for i in 0..<_nums.count
        {
            if _nums[i] == val
            {
               _nums.remove(at: i)
            }
        }
        return _nums.count
    }
}


