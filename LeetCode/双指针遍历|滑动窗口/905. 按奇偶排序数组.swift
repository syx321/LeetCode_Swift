//
//  905. 按奇偶排序数组.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/5.
//

import Foundation

//参考快排的操作方法从头尾开始移动，遇到满足条件的数字暂停等另一个指针
class _905 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        let n = nums.count
        var left = 0,
            right = n - 1
        
        while left < right {
            while nums[left]%2 == 0 && left < right{
                left += 1
            }
            let tmp = nums[left]
            while nums[right]%2 == 1 && left < right{
                right -= 1
            }
            nums[left] = nums[right]
            left += 1
            nums[right] = tmp
            right -= 1
        }
        
        return nums
    }
}
