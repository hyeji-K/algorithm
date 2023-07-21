//
//  21.소인수분해.swift
//  algorithm_level0
//
//  Created by heyji on 2023/07/18.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    var result: Int = n
    var resultArray: [Int] = []

    for i in 2...n {
        if result % i == 0 {
            while result % i == 0 {
                result /= i
                resultArray.append(i)
            }
        }
    }

    return Array(Set(resultArray)).sorted()
}


// 처음에 시도한 방법 -> 실패
// number가 252일 때 결과값이 [2, 3, 6, 7]로 소수가 아닌 수가 결과값에 포함이 됨
let number: Int = 252
var result: Int = number
var resultArray: [Int] = []

for i in 2...number {
    if result >= i {
        if result % i == 0 {
            result /= i
            resultArray.append(i)
        }
    }
}
