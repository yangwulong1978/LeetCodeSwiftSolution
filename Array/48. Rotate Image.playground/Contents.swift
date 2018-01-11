//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        
        // Reverse rows - Since we are *swapping* rows,
        // only do this for half of them
        
        for i in 0..<matrix.count / 2
        {
            var tmp = matrix[i]
            matrix[i] = matrix[matrix.count - 1 - i]
            matrix[matrix.count - 1 - i] = tmp
            print(matrix[i])
        }
        
        // Diagonal swap
        // Visit each row, but skip cols by row+1
        
        for i in 0..<matrix.count
        {
            for j in ( i + 1)..<matrix[i].count
            {
                var tmp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = tmp
            }
        }
        //print(matrix)
    }
}

