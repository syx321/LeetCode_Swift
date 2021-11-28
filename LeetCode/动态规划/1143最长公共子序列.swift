//
//  1143最长公共子序列.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/4/28.
//

import Foundation

class _1143 {
    
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let char1 = Array(text1)
        let char2 = Array(text2)
        let length1 = char1.count
        let length2 = char2.count
//        print(length1)
        var c = Array(repeating: Array(repeating: 0, count: length2+1), count: length1+1)
        
        for i in 1...length1 {
            for j in 1...length2 {
                if (char1[i-1] == char2[j-1]) {
                    c[i][j] = c[i-1][j-1] + 1
                } else {
                    c[i][j] = max(c[i-1][j], c[i][j-1])
                }
            }
        }
        
//        for i in 0...length1 {
//            for j in 0...length2 {
//                print(c[i][j],terminator: " ")
//            }
//            print("")
//        }
        
        return c[length1][length2]
    }
}
