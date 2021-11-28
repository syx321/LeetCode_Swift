//
//  977.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _977 {
    var result = [Int]()
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var right = 0,
            length = nums.count
        
        guard length != 1 else {
            return Array([nums[0]*nums[0]])
        }
            
        while (right < length) && (nums[right] < 0) {
            right += 1
        }
        
        var left = right - 1
        var result = [Int]()
        
        while left >= 0 && right <= length-1 {
            if abs(nums[left]) < abs(nums[right]){
                result.append(nums[left]*nums[left])
                left -= 1
            } else {
                result.append(nums[right]*nums[right])
                right += 1
            }
        }
        
        for index in stride(from: left, to: -1, by: -1) {
            result.append(nums[index]*nums[index])
        }
        
        for index in right..<length {
            result.append(nums[index]*nums[index])
        }
        
        return result
    }
}
