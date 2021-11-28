//
//  多维转一维.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/24.
//

import Foundation

class Turn {
    var result = [Int]()
    
    func turn(_ origin: Array<Any>) -> [Int]{
        self.backtrack(origin, origin.count)
        return result
    }
    
    func backtrack(_ nums: Array<Any>,_ length: Int) -> [Int]{
        for (index,value) in nums.enumerated() {
            if (value as AnyObject).count != 0 {
                backtrack(<#T##nums: Array<Int>##Array<Int>#>, <#T##length: Int##Int#>)
            }
        }
    }
}
