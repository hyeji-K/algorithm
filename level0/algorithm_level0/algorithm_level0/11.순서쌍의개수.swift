//
//  11.순서쌍의개수.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/07.
//

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    let sqrtNum = Int(sqrt(Double(n)))
    for i in 1...sqrtNum {
        if n % i == 0 {
            result += 1
        }
    }
    
    return n == sqrtNum * sqrtNum ? result * 2 - 1 : result * 2
}


let n: Int = 178
let sqrtNum = Int(sqrt(Double(n)))
var result = (1...sqrtNum).filter { n % $0 == 0 }.count * 2
if n == sqrtNum * sqrtNum {
    result -= 1
}
