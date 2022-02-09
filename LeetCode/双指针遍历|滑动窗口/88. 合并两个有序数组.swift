//
//  mergeTwoArray.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/12.
//

import Foundation

class _88 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int){
        var index1 = m-1
        var index2 = n - 1
        var index = m+n-1
        
        while index1 >= 0 && index2 >= 0 {
            if nums1[index1] > nums2[index2] {
                nums1[index] = nums1[index1]
                index1 -= 1
            } else {
                nums1[index] = nums2[index2]
                index2 -= 1
            }
            index -= 1
        }
        
        if index1 >= 0 {
            while index1 >= 0 {
                nums1[index] = nums1[index1]
                index1 -= 1
                index -= 1
            }
        }
        if index2 >= 0 {
            while index2 >= 0 {
                nums1[index] = nums2[index2]
                index2 -= 1
                index -= 1
            }
        }
    }
}
