//
//  File.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/4.
//

import Foundation

class _94{
    var array = [Int]()
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        inorder(root)
        return array
    }

    func inorder(_ node: TreeNode?) {
        guard let node = node else {
            return
        }

        inorder(node.left)
        array.append(node.val)
        inorder(node.right)
    }
}


