//
//  83. 删除排序链表中的重复元素.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/8.
//

import Foundation

class _83 {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        var fast = head?.next,
            slow = head
        while fast != nil {
            
            while fast?.val == slow?.val && fast != nil{
                fast = fast?.next
            }
            
            slow?.next = fast
            slow = slow?.next
            fast = fast?.next
        }
        return head
    }
}
