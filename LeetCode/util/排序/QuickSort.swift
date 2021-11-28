//
//  QuickSort.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/17.
//

import Foundation

class QuickSort<Elements: Comparable> {
    static func quickSort(_ elements: inout [Elements],_ i: Int, _ j: Int) {
        guard i < j else {
            return
        }
        
        var val = elements[i],
            l = i,
            r = j
        
        while l < r {
            //必须从左侧开始，因为val = elements[i]
            while (l < r) && (elements[r] > val) {
                r -= 1
            }
            
            if l < r {
                elements[l] = elements[r]
                l += 1
            }
            
            while (l < r) && elements[l] < val {
                l += 1
            }
            
            if l < r {
                elements[r] = elements[l]
                r -= 1
            }
        }
        
        elements[l] = val
        quickSort(&elements, i, l - 1)
        quickSort(&elements, l + 1, j)
    }
}
