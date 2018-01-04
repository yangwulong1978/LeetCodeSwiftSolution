//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var set = Set<Int>()
        
        for i in 0..<nums.count
        {
            set.insert(nums[i])
        }
        
        return set.count
    }
}


