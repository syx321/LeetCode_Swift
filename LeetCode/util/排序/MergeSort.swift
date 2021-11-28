//
//  MergeSort.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/11/28.
//

import Foundation

//有bug
class MergeSort<Element: Comparable> {
    static func mergeSort(_ elements: inout [Element]) {
        var tmp: [Element] = Array(elements)
        var step = 1
        while step < elements.count {
            mergePass(&elements, &tmp, step)
            step *= 2
            mergePass(&tmp, &elements, step)
            step *= 2
        }
    }
    
    private static func mergePass(_ elements: inout [Element],_ tmp: inout [Element], _ step: Int) {
        var i = 0
        while i <= elements.count {
            merge(&elements, &tmp, left: i, middle: i + step - 1, right: i + 2 * step - 1 )
            i = i + 2 * step
        }
        if i + step < elements.count {
            merge(&elements, &tmp, left: i, middle: i + step - 1, right: elements.count - 1)
        } else {
            if i < elements.count {
                for j in i..<elements.count {
                    tmp[j] = elements[j]
                }
            }
        }
    }
    
    private static func merge(_ elements: inout [Element],_ tmp: inout [Element], left: Int, middle: Int, right : Int) {
        var i = left, j = middle + 1, k = left
        
        while (i <= middle) && (j <= right) {
            if (elements[i] <= elements[j]) {
                tmp[k] = elements[i]
                k += 1
                i += 1
            } else {
                tmp[k] = elements[j]
                k += 1
                j += 1
            }
        }
        if (i > middle) {
            for q in j..<right {
                tmp[k] = elements[q]
                k += 1
            }
        } else {
            for q in i..<middle {
                tmp[k] = elements[q]
                k += 1
            }
        }
    }
}
