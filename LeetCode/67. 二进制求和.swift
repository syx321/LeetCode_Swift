//
//  67. 二进制求和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/7/30.
//
//给你两个二进制字符串，返回它们的和（用二进制表示）。
//输入为 非空 字符串且只包含数字 1 和 0。

import Foundation

class _67 {
    func addBinary(_ a: String, _ b: String) -> String {
        let ca = Array(a), cb = Array(b)
        let na = a.count, nb = b.count
        let length = max(na, nb)
        var carry = 0, ans: String = ""
        
        for i in 0..<length {
            carry += i < na ? (Int(String(ca[na-i-1]))!) : 0
            carry += i < nb ? (Int(String(cb[nb-i-1]))!) : 0
            ans.append(String(carry%2))
            carry /= 2
        }
        
        if (carry > 0) {
            ans.append("1");
        }
        
        
        return String(ans.reversed())
    }
}
