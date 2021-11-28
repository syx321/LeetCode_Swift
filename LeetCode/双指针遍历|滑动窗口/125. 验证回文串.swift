//
//  125. 验证回文串.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/7.

//给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。
//说明：本题中，我们将空字符串定义为有效的回文串。

import Foundation

class _125 {
    func isPalindrome(_ s: String) -> Bool {
        var c : [Character] = []
        
        for i in s.lowercased() {
            if (i >= "a" && i <= "z") || (i >= "0" && i <= "9") {
                c.append(i)
            }
        }
        
        let length = c.count
        var i = 0, j = length - 1,result = true
        
        while i < j {
            if c[i] != c[j] {
                return false
            } else {
                i += 1
                j -= 1
          
            }
        }
        
        return result
    }
}
