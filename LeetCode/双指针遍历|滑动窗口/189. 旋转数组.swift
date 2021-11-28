//
//  189. 旋转数组.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let tmp = nums
        let length = nums.count
        for index in  0..<length {
            let to = (index+k)%length
            nums[to] = tmp[index]
        }
    }
}
