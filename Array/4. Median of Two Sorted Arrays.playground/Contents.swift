//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var median : Double
        var nums3 = nums1 + nums2
        nums3.sort(by: <)
        
        if nums3.count % 2 == 0
        {
            var count = nums3.count / 2
            
            median = Double (Double( nums3[count - 1] + nums3[count]) / 2)
            
            
        }
        else{
            var count = Int( nums3.count / 2 )
            
            median = Double( nums3[ count])
        }
        return median
    }
}






