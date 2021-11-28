//
//  58. 最后一个单词的长度.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/29.
//

import Foundation

class _58 {
    func lengthOfLastWord(_ s: String) -> Int {
        guard s.count != 0 && !s.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            return 0
        }
        
        let strings = s.split(separator: " ")
        let last = strings[strings.index(before: strings.endIndex)]
        let length = last.count
        
        return length
    }
}
