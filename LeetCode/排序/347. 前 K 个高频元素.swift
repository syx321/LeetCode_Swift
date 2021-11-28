//
//  347. 前 K 个高频元素.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/16.
//

import Foundation

class _347 {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: [Int]]()
        
        nums.forEach { num in
            map[num, default: []].append(num)
        }
        
        var freqArr = Array(repeating: [Int](), count: nums.count)
        
        for (key,value) in map {
            freqArr[value.count - 1].append(key)
        }
        
        var result = [Int]()
        
        for arr in freqArr {
            result += arr
        }
        
        return Array(result.reversed()[0..<k])
    }
}
