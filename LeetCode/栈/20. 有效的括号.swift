//
//  20. 有效的括号.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/1.
//

import Foundation

class _20 {
    func isValid(_ s: String) -> Bool {
        guard s.count > 1 && s.count%2 == 0 else {
            return false
        }
        let s: [Character] = Array(s)
        var stack: [Character] = Array()
        
        let parenthesis: [Character: Character] = [
            ")" : "(",
            "]" : "[",
            "}" : "{"
        ]
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else {
                if stack.count == 0{
                    return false
                }
                
                if parenthesis[char] != stack.removeLast() {
                    return false
                }
            }
        }
        
        if !stack.isEmpty {
            return false
        }
        
        return true
    }
}
