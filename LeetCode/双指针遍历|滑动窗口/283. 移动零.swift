//
//  _283.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _283 {
    func moveZeroes(_ nums: inout [Int]) {
        let length = nums.count
        guard length != 0 else {
            return
        }
        
        var slow = 0,fast = 0
        
        while fast < length {
            if nums[fast] != 0 {
                nums[slow] = nums[fast]
                slow += 1
            }
            fast += 1
        }
        
        for index in slow..<length {
            nums[index] = 0
        }
    }
}
