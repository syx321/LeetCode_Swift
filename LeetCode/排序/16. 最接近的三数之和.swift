//
//  16. 最接近的三数之和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/29.
//

import Foundation

class _16 {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        
        var sum = 0,
            result = nums[0]
        
        for i in 0..<nums.count {
            sum = abs(nums[i] + sum - target) < abs(sum - target) ? nums[i] + sum : sum
            result = abs(result - target) < abs(sum - target) ? result : sum
        }
        
        return result
    }
}
