//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        
        var reversedValue: Int
        
        do
        {
            var absX = String(abs(x))
            absX = String( absX.reversed())
            
            if x < 0
            {
                reversedValue = 0 - Int(absX)!
                if reversedValue < Int32.min
                {
                    reversedValue = 0
                }
            }
            else{
                reversedValue = Int(absX)!
                if reversedValue > Int32.max
                {
                    reversedValue = 0
                }
                
            }
        }
        catch
        {
            reversedValue = 0
        }
        
        return reversedValue
        
    }
}
