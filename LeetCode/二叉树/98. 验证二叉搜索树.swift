//
//  98. 验证二叉搜索树.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/18.
//

import Foundation

class _98 {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return self.test(root,Int.min,Int.max)
    }
    
    func test(_ node: TreeNode?,_ min: Int,_ max: Int) -> Bool{
        guard node != nil else {
            return true
        }
        
        if node!.val <= min || node!.val >= max {
            return false
        }
        
        return test(node!.left, min, node!.val) && test(node!.right, node!.val, max)
    }
    
    
}
