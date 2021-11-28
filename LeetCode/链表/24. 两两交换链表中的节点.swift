//
//  24. 两两交换链表中的节点.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _24 {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let left = head
        let right = head?.next
        
        left?.next = swapPairs(right?.next)
        right?.next = left
        
        return right
    }
}
