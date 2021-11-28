//
//  235. 二叉搜索树的最近公共祖先.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/19.
//

import Foundation

class _235 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var result = root
        while true{
            if p!.val > result!.val && q!.val > result!.val {
                result = result?.right
            } else if p!.val < result!.val && q!.val < result!.val {
                result = result?.left
            } else {
                break
            }
        }
        
        return result
    }
}
