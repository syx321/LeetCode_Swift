//
//  455. 分发饼干.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/29.
//

import Foundation

class _455 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted(by: <)
        let s = s.sorted(by: <)
        
        var slow = 0,
            fast = 0
        
        var result = 0
        while slow != g.count && fast != s.count {
            if g[slow] <= s[fast] {
                slow += 1
                fast += 1
                result += 1
            } else {
                fast += 1
            }
        }
        
        return result
    }
}
