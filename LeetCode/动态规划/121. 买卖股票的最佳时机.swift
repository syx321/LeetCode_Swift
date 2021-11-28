//
//  121. 买卖股票的最佳时机.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/16.
//

import Foundation

class _121 {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var minPrice = Int.max,
            maxProfit = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(price-minPrice, maxProfit)
        }
        
        return maxProfit
    }
}
