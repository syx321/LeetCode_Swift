//
//  21. 合并两个有序链表.swift.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _21 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard list1 != nil || list2 != nil else{
            return nil
        }
        
        if list1 == nil {
            return list2
        } else if list2 == nil {
            return list1
        }
        
        if list1!.val <= list2!.val {
            return ListNode(list1!.val, mergeTwoLists(list1?.next, list2))
        } else {
            return ListNode(list2!.val, mergeTwoLists(list1, list2?.next))
        }
    }
}
