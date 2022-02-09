//
//  236. 二叉树的最近公共祖先.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/2.
//

import Foundation

///思路： 可不可以把遍历到的每个节点经过的路径都存起来，然后把对应的两个节点的路径对比找到公共祖先。
class _236 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || root === p || root === q { return root }

        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)

        if left != nil && right != nil { return root }
        if left != nil { return left }
        if right != nil { return right }
        return nil
    }
}
