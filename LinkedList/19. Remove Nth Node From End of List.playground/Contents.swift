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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        let dummyHead = ListNode(0)
        dummyHead.next = head
        
        var firstListNode = dummyHead
        var secondListNode = dummyHead
        
        
        for i in 0 ..< n
        {
            if let listNode = firstListNode.next
            {
                firstListNode = listNode
            }
        }
        
        while firstListNode.next != nil
        {
            
            firstListNode = firstListNode.next!
            secondListNode = secondListNode.next!
        }
        
        secondListNode.next = secondListNode.next?.next
        
        return dummyHead.next
    }
}

