//
//  557. 反转字符串中的单词 III.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _557 {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ").map {
            String($0.reversed())
        }.joined(separator: " ")
        
    }
}
