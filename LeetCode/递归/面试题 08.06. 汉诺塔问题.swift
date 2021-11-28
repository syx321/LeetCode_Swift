//
//  面试题 08.06. 汉诺塔问题.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/27.
//

import Foundation

class _0806 {
    func hanota(_ A: inout [Int], _ B: inout [Int], _ C: inout [Int]) {
        let n = A.count
        move(n, &A, &B, &C)
    }
    
    private func move(_ n: Int, _ A: inout [Int], _ B: inout [Int], _ C: inout [Int]) {
        if n == 1 {
            C.append(A.last!)
            A.removeLast()
            return
        }
        else {
            self.move(n-1, &A, &C, &B)  // 将A上面n-1个通过C移到B
            C.append(A.last!)           // 将A最后一个移到C
            A.removeLast()              // 这时，A空了
            self.move(n-1, &B, &A, &C)  // 将B上面n-1个通过空的A移到C
        }
    }
}
