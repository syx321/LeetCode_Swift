//
//  268. 丢失的数字.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/28.
//

import Foundation

class _268 {
    //魔法
    func missingNumber1(_ nums: [Int]) -> Int {
        var length = nums.count
        for i in 0..<length {
            length += i - nums[i]
        }
        return length
    }
    
    
    func missingNumber2(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for i in 0...nums.count {
            set.insert(i)
        }
        for num in nums {
            set.remove(num)
        }
        return set.removeFirst()
    }
}
