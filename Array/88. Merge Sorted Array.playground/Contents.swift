//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var tempNum1 = [Int]()
        var tempNum2 = [Int]()
        
        for i in 0..<m
        {
            tempNum1.append(nums1[i])
            
        }
        for j in 0..<n
        {
            tempNum2.append(nums2[j])
        }
        
        nums1 = tempNum1 + tempNum2
        nums1 = nums1.sorted(by: {$0 < $1})
    }
}

