//
//  206. 反转链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/14.
//

import Foundation

class _206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var i = head,pre: ListNode? = nil,j: ListNode? = nil
        
        while i != nil {
            j = i?.next
            i?.next = pre
            pre = i
            i = j
        }
        
        return pre
    }
}
