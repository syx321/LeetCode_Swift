//
//  2. 两数相加.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/9.
//
//给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。
//请你将两个数相加，并以相同形式返回一个表示和的链表。
//你可以假设除了数字 0 之外，这两个数都不会以 0 开头。

import Foundation

class _2 {
    //非递归
    func addTwoNumbers1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1,l2 = l2

        var result: ListNode = ListNode(), pre = result
        var val: Int = 0,carry = 0

        while (l1 != nil) || (l2 != nil) {
            val = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            carry = 0
            if val >= 10{
                val -= 10
                carry = 1
            }
            result.next = ListNode(val)
            result = result.next!

            if l1 != nil {
                l1 = l1!.next
            }
            if l2 != nil {
                l2 = l2!.next
            }
        }

        if carry != 0{
            result.next = ListNode(1)
            result = result.next!
        }

        return pre.next

    }
    
    //递归
    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return sumUp(l1, l2, 0)
    }
    
    private func sumUp(_ l1: ListNode?,_ l2: ListNode?,_ carry: Int) -> ListNode?{
        if (l1 == nil) && (l2 == nil) && carry == 0 {
            return nil
        }
        
        let sum = (l1?.val ?? 0)+(l2?.val ?? 0) + carry
        let result = ListNode(sum%10)
        result.next = sumUp(l1?.next, l2?.next,sum/10)
        return result
    }
}
