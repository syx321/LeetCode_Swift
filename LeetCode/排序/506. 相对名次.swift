//
//  506. 相对名次.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/29.
//

import Foundation

class _506 {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        let sorted = score.sorted()
        let n = score.count
        var result: [String] = Array(repeating: "", count: n)
        for i in 0..<n {
            let index = n - sorted.firstIndex(of: score[i])!
            switch index {
            case 1:
                result[i] = "Gold Medal"
            case 2:
                result[i] = "Silver Medal"
            case 3:
                result[i] = "Bronze Medal"
            default:
                result[i] = String(index)
            }
        }
        return result
    }
}
