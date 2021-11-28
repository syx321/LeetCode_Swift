//
//  112. 路径总和.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/6.
//

import Foundation

class _112 {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        return root == nil ? false : findPath(root!,0,targetSum)
    }
    
    func findPath(_ node: TreeNode,_ sum: Int,_ targetSum: Int) -> Bool {
        let s = sum + node.val
        
        if node.left == nil && node.right == nil {
            return s == targetSum
        } else if node.left != nil && node.right == nil {
            return findPath(node.left!, s, targetSum)
        } else if node.left == nil && node.right != nil {
            return findPath(node.right!, s, targetSum)
        }
        
        return findPath(node.left!, s, targetSum) || findPath(node.right!, s, targetSum)
    }
}
