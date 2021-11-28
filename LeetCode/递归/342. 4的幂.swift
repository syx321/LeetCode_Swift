//
//  342. 4的幂.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _342 {
    func isPowerOfFour(_ n: Int) -> Bool {
        if n == 0 {return false}
        if n == 1 {return true}
        if n % 4 != 0 {return false}
        if n == 4 {return true}
        return isPowerOfFour(n/4)
    }
}
