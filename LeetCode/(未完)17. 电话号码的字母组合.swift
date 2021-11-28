//
//  17. 电话号码的字母组合.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/6/13.
//
//给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。答案可以按 任意顺序 返回。
//
//给出数字到字母的映射如下（与电话按键相同）。注意 1 不对应任何字母。

import Foundation

class _17 {
    let nums = [
        "2":["a","b","c"],
        "3":["d","e","f"],
        "4":["g","h","i"],
        "5":["j","k","l"],
        "6":["m","n","o"],
        "7":["p","q","r","s"],
        "8":["t","u","v"],
        "9":["w","x","y","z"],
    ]
    var result : [String] = [""]
    
    func letterCombinations(_ digits: String) -> [String] {
        if (digits.count == 0) {
            return [""]
        }
        
//        var index = digits.index(digits.startIndex, offsetBy: 0)
//        var char = digits[index]
        
        var strings : [String] = []
        
        for i in digits {
            strings.append(String(i))
        }
        
        debugPrint(nums[strings[3]]!)
        
        return result
    }
    
    func backtrack() {
        
    }
}
