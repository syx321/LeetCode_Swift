//
//  145. 二叉树的后序遍历.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/7.
//

import Foundation

class _145 {
    var result : [Int] = []
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else{
            return []
        }
        
        postorderTraversal(root?.left)
        postorderTraversal(root?.right)
        result.append(root!.val)
        
        return result
    }
}
