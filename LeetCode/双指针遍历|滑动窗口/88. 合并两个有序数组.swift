//
//  mergeTwoArray.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/12.
//

import Foundation

class _88 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int){
        var result: [Int] = []
        
        let n1 = m,n2 = n
        
        var i = 0,j = 0
        while i < n1 && j < n2 {
            if nums1[i] <= nums2[j] {
                result.append(nums1[i])
                i += 1
            } else {
                result.append(nums2[j])
                j += 1
            }
        }
        
        while i < n1 {
            result.append(nums1[i])
            i += 1
        }
        
        while j < n2 {
            result.append(nums2[j])
            j += 1
        }
        
        nums1 = result
    }
}
