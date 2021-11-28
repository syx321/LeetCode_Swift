//
//  242. 有效的字母异位词.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _242 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var words: [Int] = Array(repeating: 0, count: 26)
        let a = Character("a").unicodeScalars.first!.value
        for c in s.unicodeScalars {
            words[Int(c.value - a)] += 1
        }
        
        for c in t.unicodeScalars {
            words[Int(c.value - a)] -= 1
        }
        
        for word in words {
            if word != 0 {
                return false
            }
        }
        
        return true
    }
}
