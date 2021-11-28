//
//  70. 爬楼梯 .swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/16.
//

import Foundation

class _70 {
    func climbStairs(_ n: Int) -> Int {
        var p = 0, q = 0, r = 1
        for _ in 0..<n {
            p = q
            q = r
            r = p + q
        }
        
        return r
    }
}
