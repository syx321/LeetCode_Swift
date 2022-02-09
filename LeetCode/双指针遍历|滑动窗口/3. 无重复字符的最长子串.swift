//
//  3. 无重复字符的最长子串.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/25.
//
//给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。

import Foundation

class _3 {
    //滑动窗口
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        guard s != "" else  {
//            return 0
//        }
//        var max = 0,
//            cur = String()
//
//        for char in s {
//            if let index = cur.firstIndex(of: char) {
//                let newIndex = cur.index(index, offsetBy: 1)
//                cur = String(cur[newIndex...])
//            }
//
//            cur.append(char)
//            if cur.count > max {
//                max = cur.count
//            }
//        }
//
//        return max
//    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else {
            return 0
        }
        
        var chars: [Character] = []
        for c in s {
            chars.append(c)
        }
        var lookup = Set<Character>()
        var left = 0
        var right = 0
        var current = 0
        let n = s.count
        
        while left < n && right < n {
            if lookup.contains(chars[right]) {
                lookup.remove(chars[left])
                left += 1
            } else {
                current = max(current, right - left + 1)
                lookup.insert(chars[right])
                right += 1
            }
        }
        
        return current
    }
}
