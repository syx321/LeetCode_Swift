//
//  704. 二分查找.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _704 {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0,
            right = nums.count - 1,
            mid = 0
        
        while left <= right{
            mid = (right + left)>>1
            
            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        
        return -1
    }
    
   
}
