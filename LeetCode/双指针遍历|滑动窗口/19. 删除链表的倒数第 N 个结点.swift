//
//  _19.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/10.
//

import Foundation

class _19 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head != nil else {
            return nil
        }
        let newHead = ListNode()
        newHead.next = head
        var slow = newHead,
            fast = head
        
        for _ in 0..<n {
            fast = fast?.next
        }
        
        while fast != nil {
            fast = fast?.next
            slow = slow.next!
        }
        
        slow.next = slow.next?.next
        return newHead.next
    }
}
