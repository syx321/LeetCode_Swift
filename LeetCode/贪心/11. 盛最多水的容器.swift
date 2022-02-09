//
//  11. 盛最多水的容器.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/2.
//

import Foundation

class _11 {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0,
            right = height.count - 1
        
        var result = 0
        while left < right {
            let current = min(height[left], height[right]) * (right - left)
            result = max(result, current)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return result
    }
}
