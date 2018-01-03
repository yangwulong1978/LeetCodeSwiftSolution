//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var x1 = 0, x2 = 0 ,y1 = 0, y2 = 0 , area = 0
        var l = 0 ,r = height.count - 1
        
        while l < r
        {
            x1 = l
            y1 = height[l]
            
            
            x2 = r
            y2 = height[r]
            
            var minHeight = y1>y2 ? y2: y1
            var tempArea =  (x2 - x1) * minHeight
            if tempArea > area
            {
                area = tempArea
            }
            if y1 < y2
            {
                l += 1
            }
            else {
                r -= 1
            }
        }
        
        return area
    }
}
