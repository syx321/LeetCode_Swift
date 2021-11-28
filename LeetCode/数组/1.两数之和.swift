//
//  1.两数之和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/25.
//

import Foundation

class _1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count != 0 else {
            return []
        }
        var subs = [Int:Int]()
        for i in 0..<nums.count {
            let sub = target - nums[i]
            if let n = subs[nums[i]] {
                return [n,i]
            } else {
                subs[sub] = i
            }
        }
        return []
    }
}
