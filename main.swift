//
//  main.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/4/28.
//

//let l1 = ListNode(9, ListNode(9, ListNode(9,ListNode(9))))
//let l2 = ListNode(9, ListNode(9, ListNode(9))))

//let l1 = ListNode(1, ListNode(2, ListNode(4)))
//let l2 = ListNode(1, ListNode(3, ListNode(4)))

//while (result != nil) {
//    print(result?.val)
//    result = result?.next
//}
import Foundation

var nums = [0]
let solution = _268()

let result = solution.missingNumber2(nums)

print(result)