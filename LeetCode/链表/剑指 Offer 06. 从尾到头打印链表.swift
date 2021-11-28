//
//  剑指 Offer 06. 从尾到头打印链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _offer06 {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var p = head
        var stack = Array<Int>()
        while p != nil {
            stack.append(p!.val)
            p = p!.next
        }
        
        return stack.reversed()
    }
}
