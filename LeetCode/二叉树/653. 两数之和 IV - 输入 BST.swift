//
//  653. 两数之和 IV - 输入 BST.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/18.
//

import Foundation

class _653 {
    var set = Set<Int>()
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard root != nil else {
            return false
        }
        
        if set.contains(k-root!.val) {
            return true
        } else {
            set.insert(root!.val)
        }

        return findTarget(root?.left, k) || findTarget(root?.right, k)
    }
}
