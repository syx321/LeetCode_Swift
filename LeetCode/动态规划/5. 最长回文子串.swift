//
//  5. 最长回文子串.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/4/28.
//

import Foundation

class _5 {
    func longestPalindrome(_ s: String) -> String {
        if s.count <= 1 {
            return s
        }

        let s = Array(s)
        //! 最长回文串的起始位置 和长度
        var maxLen = 1
        var begin = 0

        var dp = [[Bool]](repeating: [Bool](repeating: false, count: s.count), count: s.count)

        //! 从下到上
        for i in (0..<s.count).reversed() {

            //! 从左到右(j>=i)
            for j in i..<s.count {
                let len = (j-i+1)
                dp[i][j] = (s[i] == s[j]) && ( len <= 2 || dp[i+1][j-1])
                if dp[i][j] && len > maxLen {
                    maxLen = len
                    begin = i
                }
            }
        }

        return String(s[begin..<begin+maxLen])
    }
    
}
