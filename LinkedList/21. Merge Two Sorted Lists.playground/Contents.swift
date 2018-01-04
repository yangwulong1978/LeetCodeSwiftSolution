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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var start = ListNode(0)
        if l1 == nil
        {
            return l2
        }
        if l2 == nil
        {
            return l1
        }
        var _l1 = l1!, _l2 = l2!
        
        if _l1.val < _l2.val
        {
            start = _l1
            start.next = mergeTwoLists(_l1.next, _l2)
        }else {
            
            start = _l2
            start.next = mergeTwoLists(_l1, _l2.next)
        }
        
        return start
    }
}


