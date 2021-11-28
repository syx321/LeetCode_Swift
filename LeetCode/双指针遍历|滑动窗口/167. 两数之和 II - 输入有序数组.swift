//
//  167. 两数之和 II - 输入有序数组.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0,
            right = numbers.count - 1,
            sum = 0
        
        while left < right {
            sum = numbers[left] + numbers[right]
            if sum > target {
                right -= 1
            } else if sum < target {
                left += 1
            } else {
                return [left+1,right+1]
            }
        }
        
        return [-1,-1]
    }
}
