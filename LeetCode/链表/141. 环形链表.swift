//
//  141. 环形链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/3.
//

import Foundation

class _141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else {
            return false
        }
        var slow = head,
            fast = head
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }
        
        return false
    }
}
