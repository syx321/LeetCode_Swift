//
//  53.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/25.
//

//给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。

import Foundation

class _53 {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var pre:Int = 0
        var result:Int = nums[0]
        
        for i in 0..<nums.count {
            pre  = (pre+nums[i] > nums[i]) ? (pre+nums[i]) : nums[i]
            result = result > pre ? result : pre
        }
        
        return result
    }
    
}
