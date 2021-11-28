//
//  2.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/4/28.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class _2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result = ListNode()
        var add = 0
        
        while(l1!.next != nil || l2!.next != nil) {
            if l1?.next == nil {
                
            }
        }
        
        return result
    }
    
}

