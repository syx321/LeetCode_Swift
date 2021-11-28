//
//  TreeNode.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/5.
//

import Foundation

class TreeNode: Equatable {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val &&
            lhs.left == rhs.left &&
            lhs.right == rhs.right
    }
}
