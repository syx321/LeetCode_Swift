//
//  面试题 02.06. 回文链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//
//编写一个函数，检查输入的链表是否是回文的。

import Foundation

class _0206 {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head?.next == nil {
            return true
        }
        var slow = head,
            fast = head,
            stack = Stack<ListNode>()
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        while slow != nil {
            stack.push(slow)
            slow = slow?.next
        }
        
        slow = head
        fast = head
        while fast != nil {
            do {
                if try stack.pop()?.val != slow?.val {
                    return false
                }
            } catch {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
}
