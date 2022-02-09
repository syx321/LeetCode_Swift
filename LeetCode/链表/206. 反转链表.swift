//
//  206. 反转链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/14.
//

import Foundation

class _206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else  {
            return nil
        }
        
        var prev: ListNode? = nil,
            next: ListNode? = nil,
            current = head
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
}
