//
//  217. 存在重复元素.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/17.
//

import Foundation

class _217 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set<Int>(nums).count != nums.count
    }
}
