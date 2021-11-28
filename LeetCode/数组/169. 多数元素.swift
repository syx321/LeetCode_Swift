//
//  169.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _169 {
    func majorityElement(_ nums: [Int]) -> Int {
        var num = nums
        sort(&num, 0, num.count - 1)
        return num[num.count/2]
    }
    
    func sort(_ nums: inout [Int], _ i: Int, _ j: Int) {
        guard i < j else {
            return
        }
        let p = nums[i]
        var l = i,
            r = j
        while l < r {
            while (l < r) && (nums[r] > p) {
                r -= 1
            }
            if l < r {
                nums[l] = nums[r]
                l += 1
            }
            while (l < r) && (nums[l] < p) {
                l += 1
            }
            
            if l < r {
                nums[r] = nums[l]
                r -= 1
            }
        }
        nums[l] = p
        sort(&nums, i, l - 1)
        sort(&nums, l + 1, j)
    }
}
