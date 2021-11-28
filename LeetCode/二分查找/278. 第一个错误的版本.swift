//
//  278. 第一个错误的版本.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/15.
//

import Foundation

class _278 {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1,
            right = n,
            mid = 0
        
        while left < right {
            mid = (left + right)>>1
            
            if isBadVersion(mid){
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
    
    func isBadVersion(_ version: Int) -> Bool{
        return true
    }
}
