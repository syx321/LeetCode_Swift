//
//  27. 移除元素.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/29.
//
//给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素，并返回移除后数组的新长度。
//不要使用额外的数组空间，你必须仅使用 O(1) 额外空间并 原地 修改输入数组。
//元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。

import Foundation

class _27{
    
    //MARK:1
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var pre = 0, next = 0, length = nums.count

        while next < length {
            if nums[next] != val {
                nums[pre] = nums[next]
                pre += 1
            }
            next += 1
        }

        return pre
    }
    
    //MARK:2
//    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//        nums = nums.filter({$0 != val})
//        return nums.count
//    }
}
