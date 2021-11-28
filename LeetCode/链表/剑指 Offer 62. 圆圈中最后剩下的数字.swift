//
//  剑指 Offer 62. 圆圈中最后剩下的数字.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _offer62 {
    //数组模拟，会超时，时间复杂度o(n^2)
    func lastRemaining1(_ n: Int, _ m: Int) -> Int {
        var nums = Array<Int>()
        
        for i in 0..<n {
            nums.append(i)
        }
        
        var c = 0
        while nums.count != 1 {
            let remove = (c + m - 1)%nums.count
            c = remove
            nums.remove(at: remove)
        }
        return nums[0]
    }
    
    //剑指offer303 时间复杂度o(n) 不会
    func lastRemaining2(_ n: Int, _ m: Int) -> Int {
        var ans = 0
        // 最后一轮剩下2个人，所以从2开始反推
        for i in 2...n {
            ans = (ans + m) % i
        }
        return ans
    }
}
