//
//  3. 无重复字符的最长子串 .swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/28.
//
//给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。

import Foundation

class _3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dic = [String: Int]()
        var start = 0
        var end = 0
        var count = 0
        
        for char in s {
            let value = dic[char.description]
            
            if value != nil && value! >= start {
                count = (end - start) > count ? (end - start) : count
                start = value! + 1
            }
            
            dic[char.description] = end
            end += 1
        }
        
        count = (end - start) > count ? (end - start) : count
        
        return count
    }
}
