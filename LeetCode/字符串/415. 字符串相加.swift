//
//  415. 字符串相加.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/9.
//

import Foundation

class _415 {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var result: [String] = []
        
        var nums1: [Int] = []
        for c in num1 {
            nums1.append(Int(String(c))!)
        }
        var nums2: [Int] = []
        for c in num2 {
            nums2.append(Int(String(c))!)
        }
        
        var r1 = num1.count - 1
        var r2 = num2.count - 1
        
        var tmp = 0
        while r1 >= 0 && r2 >= 0 {
            let add = nums1[r1] + nums2[r2] + tmp
            result.append((add % 10).description)
            tmp = add / 10 > 0 ? 1 : 0
            r1 -= 1
            r2 -= 1
        }
        
        while r1 >= 0 {
            let add = nums1[r1] + tmp
            result.append((add % 10).description)
            tmp = add / 10 > 0 ? 1 : 0
            r1 -= 1
        }
        
        while r2 >= 0 {
            let add = nums2[r2] + tmp
            result.append((add % 10).description)
            tmp = add / 10 > 0 ? 1 : 0
            r2 -= 1
        }
        
        if tmp > 0 {
            result.append(tmp.description)
        }
        
        return result.reversed().joined()
    }
}
