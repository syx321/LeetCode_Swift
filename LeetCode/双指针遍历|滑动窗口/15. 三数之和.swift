//
//  15. 三数之和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/1/31.
//


import Foundation

///给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。
///注意：答案中不可以包含重复的三元组。
class _15 {
    /*
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return []
        }
        
        let nums = nums.sorted(by: <)
        var result:[[Int]] = []
        
        var left = 0,
            right = nums.count - 1,
            middle = 0
        
        while left < right && nums[left] <= 0 {
            
        }
        
        return result
    }
    
    private func search(nums: [Int], target: Int, left: Int, right: Int) -> Int?{
        var middle = 0
        var left = left
        var right = right
        
        while left <= right {
            middle = (right - left)/2 + left
            if nums[middle] < target {
                left = middle + 1
            } else if nums[middle] > target {
                right = middle - 1
            } else {
                return middle
            }
        }
        
        return nil
    }
     */    
}
