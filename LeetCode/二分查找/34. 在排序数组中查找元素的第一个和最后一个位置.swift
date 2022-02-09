//
//  34. 在排序数组中查找元素的第一个和最后一个位置.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/1.
//

import Foundation

///初步思路：可以二分查找找到target，之后中心扩散找到左右界限
///看不懂……放弃了……
///这题没完成！！！
class _34 {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard let middle = self.search(nums, target) else {
            return [-1,-1]
        }
        
        var left = middle,
            right = middle
        
        //开始向两边扩散
        while left > 0 && nums[left - 1] == target {
            left -= 1
        }
        
        while right < nums.count - 1 && nums[right + 1] == target {
            right += 1
        }
        
        return [left, right]
    }
    
    private func search(_ nums: [Int], _ target: Int) -> Int? {
        var left = 0,
            right = nums.count - 1,
            middle = 0
        
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
}
