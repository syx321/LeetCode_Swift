//
//  383. 赎金信.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/8/10.
//

import Foundation

class _383 {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let ransomNote = Array(ransomNote), magazine = Array(magazine)

        var map = [String.Element:Int]()

        for i in magazine {
            map.updateValue((map[i] ?? 0) + 1 , forKey: i)
        }

        for i in ransomNote {
            if map[i] != nil{
                if map[i]! == 0 {
                    return false
                }
                map.updateValue(map[i]! - 1, forKey: i)
            } else {
                return false
            }
        }

        return true
    }
    
}
