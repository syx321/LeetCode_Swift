//
//  剑指 Offer 25. 合并两个排序的链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _offer25 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }
        if l1 == nil {
            return ListNode(l2!.val,mergeTwoLists(nil, l2?.next))
        } else if l2 == nil{
            return ListNode(l1!.val,mergeTwoLists(l1?.next, nil))
        }
        if l1!.val >= l2!.val {
            return ListNode(l2!.val, mergeTwoLists(l1, l2?.next))
        } else {
            return ListNode(l1!.val, mergeTwoLists(l1?.next, l2))
        }
    }
}
