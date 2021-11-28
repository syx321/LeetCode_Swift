//
//  50. Pow(x, n).swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/26.
//

import Foundation

class _50 {
    //自带
    func myPow1(_ x: Double, _ n: Int) -> Double {
        return pow(x, Double(n))
    }
    
    func myPow2(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        
        var x = x,
            n = n
        
        if n < 0 {
            x = 1/x
            n = -n
        }
        
        let half = myPow2(x, n/2)
        
        return half * half * (n % 2 == 1 ? x : 1)
    }
}
