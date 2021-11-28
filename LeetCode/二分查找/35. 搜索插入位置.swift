//
//  35. 搜索插入位置.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/29.
//
//给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
//请必须使用时间复杂度为 O(log n) 的算法。

import Foundation

class _35{
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let length = nums.count
        var left = 0, right = length-1, mid = 0
        
        while left <= right {
            mid = ((right - left)>>1) + left
            if nums[mid] > target {
                right = mid - 1
            }else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        
        mid = nums[mid] < target ? mid + 1 : mid
        
        return mid
    }
}
