//
//  61. 旋转链表.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/11.
//
//给你一个链表的头节点 head ，旋转链表，将链表每个节点向右移动 k 个位置。


import Foundation

class _61 {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        var tail: ListNode? = head
        var length = 1
        while tail?.next != nil {
            tail = tail?.next
            length += 1
        }
        tail?.next = head   // make the list a circle
  
        let step = length - k % length

        var newHead: ListNode? = head

        for _ in 0 ..< step {
            // newHead starts from head
            // at the same time tail starts from tail
            newHead = newHead?.next
            tail = tail?.next
        }
        // after steps for loop we find our new head' position
        // remember to cut tail make the circle back to a list
        tail?.next = nil
        return newHead
   }
}
