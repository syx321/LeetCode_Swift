//
//  231. 2 的幂.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _231 {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        if n == 1 {
            return true
        }
        return recursion(n)
    }
    
    private func recursion(_ n: Int) -> Bool{
        if n == 1 {
            return true
        }
        if n % 2 == 1 {
            return false
        }
        return recursion(n/2)
    }
}
