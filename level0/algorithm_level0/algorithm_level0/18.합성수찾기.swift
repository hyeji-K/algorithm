//
//  18.합성수찾기.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/12.
//

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    var count: Int = 0
    if n > 3 {
        for i in 4...n {
            for j in 1...i where i % j == 0 {
                count += 1
                if count > 2 {
                    result += 1
                    count = 0
                    break
                }
            }
        }
    }
    return result
}

let n: Int = 76
(1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
