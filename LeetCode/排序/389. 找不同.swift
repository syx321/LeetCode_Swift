//
//  389. 找不同.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/28.
//

import Foundation

class _389 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let s = Array(s).sorted(by: <)
        let t = Array(t).sorted(by: <)
        
        var slow = 0,
            fast = 0
        
        while slow < s.count && fast < t.count {
            if s[slow] != t[fast] {
                return t[fast]
            }
            slow += 1
            fast += 1
        }
        
        if fast != t.count {
            return t.last!
        }
        
        return Character(" ")
    }
}
