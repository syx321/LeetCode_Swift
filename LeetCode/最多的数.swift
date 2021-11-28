//
//  最多的数.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/12.
//

import Foundation

class Solution {
    func findMostNum(_ nums: [Int]) -> Int{
        guard nums.count != 1 else {
            return nums[0]
        }
        var most: Int = 0,biggest: Int = 0;
        let length = nums.count
        var map = [Int:Int]()
        
        for i in 0..<length {
            map.updateValue((map[nums[i]] ?? 0) + 1, forKey: nums[i])
            if map[nums[i]]! > biggest {
                biggest = map[nums[i]]!
                most = nums[i]
            }
        }
        
        return most
    }
}
