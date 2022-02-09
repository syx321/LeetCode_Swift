//
//  704. 二分查找.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let count = nums.count
        var left = 0,
            right = count - 1,
            middle = 0
        
        while left <= right {
            middle = left + (right - left)>>2
            
            if nums[middle] > target {
                right = middle - 1
            } else if nums[middle] < target {
                left = middle + 1
            } else {
                return middle
            }
        }
        return -1
    }
}
