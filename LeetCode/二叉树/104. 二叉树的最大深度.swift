//
//  104. 二叉树的最大深度.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/8.
//

import Foundation

class _104 {
    private var depth = 0
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        self.findMax(root, 1)
        return depth
    }
    
    private func findMax(_ root: TreeNode?, _ deep: Int) {
        if root?.left == nil && root?.right == nil {
            if deep > depth {
                depth = deep
            }
            return
        }
        
        findMax(root?.left, deep + 1)
        findMax(root?.right, deep + 1)
    }
    
    func maxDepth2(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            let left = maxDepth(root?.left)
            let right = maxDepth(root?.right)
            
            return max(left, right) + 1
        }
    }
}
