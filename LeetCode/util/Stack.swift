//
//  Stack.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/16.
//

import Foundation

struct Stack<Element> {
    enum StackError:Error {
        case valid
    }
    
    var items: [Element?] = []
    
    mutating func push(_ item: Element?) {
        items.append(item)
    }
    
    //如果已经为空会抛出错误
    mutating func pop() throws -> Element? {
        guard items.count != 0 else {
            throw StackError.valid
        }
        return items.removeLast()
    }
}
