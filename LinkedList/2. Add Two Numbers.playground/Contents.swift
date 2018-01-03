//: Playground - noun: a place where people can play

import UIKit


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummyHead = ListNode(0)
        var p = l1,q = l2 ,curr = dummyHead
        var carry = 0
        while p != nil || q != nil
        {
            var x = p?.val != nil ? p?.val : 0
            var y = q?.val != nil ? q?.val : 0
            var sum = carry + x! + y!
            if sum < 10
            {
                curr.next = ListNode (sum)
                carry = 0
            }
            else{
                
                curr.next = ListNode(sum % 10)
                carry = 1
            }
            curr = curr.next!
            
            
            p = p?.next
            q = q?.next
            
            
        }
        if carry == 1
        {
            curr.next = ListNode(carry)
        }
        return dummyHead.next
    }
}
