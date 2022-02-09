//
//  103. 二叉树的锯齿形层序遍历.swift
//  LeetCode
//
//  Created by 苏易肖 on 2022/2/3.
//

import Foundation

class _103 {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard root != nil else {
            return []
        }
        
        var queue: [TreeNode] = [root!]
        
        var result: [[Int]] = []
        var flag = true
        while !queue.isEmpty {
            var levelArray: [Int] = []
            let size = queue.count
            for _ in 0..<size {
                let node = queue.popLast()
                if flag {
                    levelArray.insert(node!.val, at: 0)
                } else {
                    levelArray.append(node!.val)
                }
                if node!.left != nil {
                    queue.append(node!.left!)
                }
                if node!.right != nil {
                    queue.append(node!.right!)
                }
            }
            flag = !flag
            result.append(levelArray)
        }
        return result
    }
}
