//
//  344. 反转字符串.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _344 {
    func reverseString(_ s: inout [Character]) {
        let length = s.count
        var left = 0, right = length - 1, tmp:Character  = " "
        
        while left <= right {
            tmp = s[left]
            s[left] = s[right]
            s[right] = tmp
            left += 1
            right -= 1
        }
    }
}
