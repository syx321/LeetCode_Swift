//
//  509. 斐波那契数.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _509 {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        if n == 1 {
            return 1
        }
        
        return fib(n-1) + fib(n-2)
    }
}
