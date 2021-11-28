//
//  剑指 Offer 24. 反转链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _offer24 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var p: ListNode? = nil,
            c: ListNode? = head,
            n: ListNode? = nil
        while c != nil {
            n = c?.next
            c?.next = p
            p = c
            c = n
        }
        return p
    }
}

