//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var j = 0
        for i in 0..<nums.count
        {
            if nums[i] == target
            {
                j = i
            }
            else if nums[i] > target && i - 1 >= 0 && nums[ i - 1] < target
            {
                j = i
            }
            else if i == nums.count - 1 && nums[i] < target
            {
                j = i + 1
            }
            else if i == 0 && nums[0] > target
            {
                j = 0
            }
        }
        return j
    }
}
