//: Playground - noun: a place where people can play
//It’s brilliant. The basic idea is to push the right parentheses ')', ']', or '}' into the stack each time when we encounter left ones. And if a right bracket appears in the string, we need check if the stack is empty and also whether the top element is the same with that right bracket. If not, the string is not a valid one. At last, we also need check if the stack is empty.
import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var charArray = Array(s)
        var tempArray = [String]()
        var isValid = true
        for i in 0..<charArray.count
        {
            if charArray[i] == "("
            {
                tempArray.append(")")
            }
            else if charArray[i] == "["
            {
                tempArray.append("]")
            }
            else if charArray[i] == "{"
            {
                tempArray.append("}")
            }
            else
            {
                if tempArray.count == 0 || (tempArray[tempArray.count - 1] != String(charArray[i]))
                {
                    isValid = false
                    break
                }
                else if tempArray.count > 0 && (tempArray[tempArray.count - 1] == String(charArray[i]))
                {
                    tempArray.remove(at: (tempArray.count - 1))
                }
            }
        }
        if tempArray.count != 0
        {
            isValid = false
        }
        return isValid
        
    }
}


