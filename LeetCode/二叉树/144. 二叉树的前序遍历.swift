//
//  144. 二叉树的前序遍历.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/7.
//

import Foundation

class _144 {
    private var result: [Int] = []
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        
        result.append(root!.val)
        preorderTraversal(root?.left)
        preorderTraversal(root?.right)
        
        return result
    }
}
