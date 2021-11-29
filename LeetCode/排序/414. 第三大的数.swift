//
//  414. 第三大的数.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/28.
//

import Foundation

class _414 {
    func thirdMax(_ nums: [Int]) -> Int {
        let set = Set<Int>(nums)
        let nums = Array(set).sorted(by: >)
        if nums.count < 3 {
            return nums[0]
        }
        return nums[2]
    }
}
