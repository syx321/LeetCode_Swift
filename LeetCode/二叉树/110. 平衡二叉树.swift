//
//  110. 平衡二叉树.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/3.
//

import Foundation

///用两个值记录最大高度 另一个记录最小高度，如果>=2那么就是非平衡
class _110 {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard root != nil else {
            return true
        }
        
        return isBalanced(root?.left)
        && isBalanced(root?.right)
        && (abs(preorder(root?.left) - preorder(root?.right)) <= 1)
        
    }
    
    private func preorder(_ node: TreeNode?) -> Int {
        if node == nil {
            return 0
        } else {
            return max(preorder(node?.left), preorder(node?.right)) + 1
        }
        
    }
}
