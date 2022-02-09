//
//  142. 环形链表 II.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/12/10.
//

import Foundation

class _142 {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var s = head,
            f = head
        var isCircle = false
        while f != nil {
            s = s?.next
            f = f?.next?.next
            if s == f {
                isCircle = true
                break
            }
        }
        
        if !isCircle {
            return nil
        }
        
        var t = head
        while t != s {
            t = t?.next
            s = s?.next
        }
        
        return t
    }
}

extension ListNode: Hashable, Equatable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
        hasher.combine(ObjectIdentifier(self))
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
}
