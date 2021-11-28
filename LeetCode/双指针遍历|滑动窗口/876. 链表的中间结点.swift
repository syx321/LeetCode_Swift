//
//  876. 链表的中间结点.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/21.
//

import Foundation

class _867 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        var i  = head,j = head
        
        while j?.next != nil {
            i = i?.next
            j = j?.next?.next
        }
        
        return i
    }
}
