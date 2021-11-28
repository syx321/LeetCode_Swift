//
//  Add.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/16.
//

import Foundation

class Add {
    func add(_ nums: Int...) -> Int{
        var result = 0
        nums.forEach { num in
            result += num
        }
        return result
    }
}
