//
//  13.개미군단.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/10.
//

import Foundation

// 욕심쟁이 알고리즘
func solution(_ hp:Int) -> Int {
    let attack: [Int] = [5, 3, 1]
    var mod: Int = hp
    var result: Int = 0
    
    for i in attack {
        result += mod / i
        mod = mod % i
    }
    
    return result
}
