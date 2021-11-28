//
//  203. 移除链表元素.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation
class _203 {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let start = ListNode(0)
        start.next = head
        var pre: ListNode? = start
        while (pre?.next != nil) {
            var cur = pre?.next
            while cur?.val == val {
                cur = cur?.next
            }
            pre?.next = cur
            pre = pre?.next
        }
        return start.next
    }
}
