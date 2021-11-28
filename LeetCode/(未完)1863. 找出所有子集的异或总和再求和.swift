//
//  1863. 找出所有子集的异或总和再求和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/6/8.

//一个数组的 异或总和 定义为数组中所有元素按位 XOR 的结果；如果数组为 空 ，则异或总和为 0 。
//例如，数组 [2,5,6] 的 异或总和 为 2 XOR 5 XOR 6 = 1 。
//给你一个数组 nums ，请你求出 nums 中每个 子集 的 异或总和 ，计算并返回这些值相加之 和 。
//注意：在本题中，元素 相同 的不同子集应 多次 计数。
//数组 a 是数组 b 的一个 子集 的前提条件是：从 b 删除几个（也可能不删除）元素能够得到 a 。

import Foundation

class _1863 {
    var nums = [0]
    var l = 0
    var result = 0
    func subsetXORSum(_ nums: [Int]) -> Int {
        self.nums = nums
        self.l = nums.count
        debugPrint(self.l)
        debugPrint(self.nums)
        self.backtrack(0,1)
        return result
    }
    
    func backtrack(_ position: Int,_ length: Int) {
        if (length == l) {
            return
        }
        
        if (length == 1) {
            for i in 0..<l {
                result += nums[i]
                debugPrint(nums[i])
            }
        }
        
        for i in position..<l {
            for j in i+1..<l {
                result += nums[i]^nums[j]
                debugPrint(nums[i],nums[j],terminator: " ")
                debugPrint(nums[i]^nums[j])
            }
        }
 
        backtrack(0,length+1)
        
    }
}
