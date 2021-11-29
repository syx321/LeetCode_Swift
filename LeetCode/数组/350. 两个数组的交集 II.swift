//
//  350. 两个数组的交集 II.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/28.
//

import Foundation

class _350 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let num1 = nums1.sorted(by: <)
        let num2 = nums2.sorted(by: <)
        
        var slow = 0,
            fast = 0
        
        var result: [Int] = Array()
        while slow != num1.count && fast != num2.count {
            if num1[slow] == num2[fast] {
                result.append(num1[slow])
                slow += 1
                fast += 1
            } else {
                if num1[slow] < num2[fast] {
                    slow += 1
                } else {
                    fast += 1
                }
            }
        }
        return result
    }
}
