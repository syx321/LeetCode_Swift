//
//  BubbleSort.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/17.
//

import Foundation

class BubbleSort<Elements: Comparable> {
    static func bubbleSort(_ elements: inout [Elements]) {
        for i in stride(from: elements.count-1, to: 0, by: -1) {
            for j in 0..<i {
                if elements[j] > elements[j+1] {
                    let tmp = elements[j]
                    elements[j] = elements[j+1]
                    elements[j+1] = tmp
                }
            }
        }
    }
}
