//
//  100. 相同的树.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/5.
//
//给你两棵二叉树的根节点 p 和 q ，编写一个函数来检验这两棵树是否相同。
//如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。



import Foundation

class _100 {
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return inOrder(p, q)
    }
    
    func inOrder(_ p: TreeNode?, _ q: TreeNode?) -> Bool{
        if p == nil && q == nil {
            return true
        }
        
        if p?.val != q?.val {
            return false
        }
        
        return inOrder(p?.left, q?.left) && inOrder(p?.right, q?.right)
    }
}
