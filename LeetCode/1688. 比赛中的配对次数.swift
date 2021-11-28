//
//  1688. 比赛中的配对次数.swift
//  LeetCode
//
//  Created by 苏易肖 on 2021/6/8.
//
//给你一个整数 n ，表示比赛中的队伍数。比赛遵循一种独特的赛制：
//
//如果当前队伍数是 偶数 ，那么每支队伍都会与另一支队伍配对。总共进行 n / 2 场比赛，且产生 n / 2 支队伍进入下一轮。
//如果当前队伍数为 奇数 ，那么将会随机轮空并晋级一支队伍，其余的队伍配对。总共进行 (n - 1) / 2 场比赛，且产生 (n - 1) / 2 + 1 支队伍进入下一轮。
//返回在比赛中进行的配对次数，直到决出获胜队伍为止。



import Foundation

class _1688 {
    var result = 0
    func numberOfMatches(_ n: Int) -> Int {
        if (n == 1){
            return 0
        }
        backtrack(n)
        
        return result
    }
    
    func backtrack(_ n:Int) {
        var tmp = 0
        if(n == 2){
            result += 1
            return
        }
        
        if(n%2 == 1){
            tmp = 1
        }
            
        backtrack(n/2+tmp)
        result += n/2
    }
}
