//
//  326. 3的幂.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _326 {
    func isPowerOfThree(_ n: Int) -> Bool {
        if (n==0) {return false}
        else if (n==1) {return true}
        else if (n%3 != 0) {return false}
        else if (n == 3) {return true}
        return isPowerOfThree(n/3)
    }
}
